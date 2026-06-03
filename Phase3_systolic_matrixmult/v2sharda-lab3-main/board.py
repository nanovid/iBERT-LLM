import sys
import signal
import numpy as np
import time

from pynq import Overlay
from pynq import MMIO
from pynq import PL
import pynq
if (pynq.__version__ == '2.5'):
    from pynq import Xlnk
elif (pynq.__version__ == '3.0.1'):
    from pynq import allocate
else:
    raise Exception(f"Error: Not supported pynq version: {pynq.__version__}")

def handler(signum, frame):
    print("\nError: board.py timed out waiting for the board to respond. Likely DMA error due to N1 N2 mismatch with configured bitstream.")
    raise Exception("Timeout")


signal.signal(signal.SIGALRM, handler)
PL.reset()

M1 = int(sys.argv[1])
M2 = int(sys.argv[2])
M3 = int(sys.argv[3])
N1 = int(sys.argv[4])
N2 = int(sys.argv[5])
BLOCK_NUM = int(sys.argv[6])

ascii_thank = r'''
                                   ___
                               ,-""   `.
       Thank Mr. Goose       ,'  _   ' )`-._
                            /  ,' `-._<.===-'
                           /  /
                          /  ;
              _          /   ;
 (`._    _.-"" ""--..__,'    |
 <_  `-""                     \
  <`-                          :
   (__   <__.                  ;
     `-.   '-.__.      _.'    /
        \      `-.__,-'    _,'
         `._    ,    /__,-'
            ""._\__,'< <____
                 | |  `----.`.
                 | |        \ `.
                 ; |___      \-``
                 \   --<
                  `.`.<
                    `-'
                    
'''


ascii_hisssss = r'''
                                                        _...--.
                                        _____......----'     .'
                                  _..-''                   .'
                                .'                       ./
                        _.--._.'                       .' |
                     .-'                           .-.'  /
  HISSSSS!!        .'   _.-.                     .  \   '
                 .'  .'   .'    _    .-.        / `./  :
               .'  .'   .'  .--' `.  |  \  |`. |     .'
            _.'  .'   .' `.'       `-'   \ / |.'   .'
         _.'  .-'   .'     `-.            `      .'
       .'   .'    .'          `-.._ _ _ _ .-.    :
      /    /o _.-'               .--'   .'   \   |
    .'-.__..-'                  /..    .`    / .'
  .'   . '                       /.'/.'     /  |
 `---'                                   _.'   '
                                       /.'    .'
                                        /.'/.'
                                        
'''

A = np.zeros((int(M1),int(M2)), dtype=np.int8)
B = np.zeros((int(M2),int(M3)), dtype=np.int8)
D = np.zeros((int(M1),int(M3)), dtype=np.int32)

ol = Overlay('./tutorial.bit')

# AXI Lite Stream Constants
IP_BASE_ADDRESS = 0x43C10000
ADDRESS_RANGE = 0x1000
ADDRESS_OFFSET = 0x10
mmio = MMIO(IP_BASE_ADDRESS, ADDRESS_RANGE)

BLOCK_WIDTH          = int(M3/BLOCK_NUM)
BLOCK_SIZE           = int(M2*BLOCK_WIDTH)
BLOCK_WIDTHdN2       = int(BLOCK_WIDTH/N2)
BLOCK_SIZEdN2        = int(BLOCK_SIZE/N2)
M1xBLOCK_WIDTHdN1xN2 = int((M1*BLOCK_WIDTH)/(N1*N2))
M1xBLOCK_WIDTHdN1    = int((M1*BLOCK_WIDTH)/(N1))
M1xBLOCK_WIDTH       = int((M1*BLOCK_WIDTH))

mmio.write(0x10, M1)                   # load a
mmio.write(0x18, M2)                   # load b
mmio.write(0x20, M3)                   # load c
mmio.write(0x28, M1*M2)                # load d
mmio.write(0x30, M2*M3)                # load e
mmio.write(0x38, int(M1*M2/N1))        # load f
mmio.write(0x40, M1*M3)                # load g
mmio.write(0x48, int(M1*M3/N1))        # load h
mmio.write(0x50, int(M1/N1))           # load i
mmio.write(0x58, int(M3/N2))           # load j
mmio.write(0x60, int((M1*M3)/(N1*N2))) # load k
mmio.write(0x68, (M1*M2)+(M2*M3))      # load l

mmio.write(0x70,  int(BLOCK_WIDTH))             # load m: block_width
mmio.write(0x78,  int(BLOCK_SIZE))              # load n: block_size
mmio.write(0x80,  int(BLOCK_WIDTHdN2))          # load o: BLOCK_WIDTHdN2
mmio.write(0x88,  int(BLOCK_SIZEdN2))           # load p: BLOCK_SIZEdN2
mmio.write(0x90,  int(M1xBLOCK_WIDTHdN1xN2))    # load q: M1xBLOCK_WIDTHdN1xN2
mmio.write(0x98,  int(M1xBLOCK_WIDTHdN1))       # load r: M1xBLOCK_WIDTHdN1
mmio.write(0xa0,  int(M1xBLOCK_WIDTH))          # load s: M1xBLOCK_WIDTH
mmio.write(0xa8,  int(BLOCK_NUM))               # load t: block_num

# AXI Data Stream
if (pynq.__version__ == '2.5'):
    xlnk = Xlnk()
    in_buffer = xlnk.cma_array(shape=(M1*M2+M2*M3,), dtype=np.int32)
    out_buffer = xlnk.cma_array(shape=(M1*M3,), dtype=np.int32)
elif (pynq.__version__ == '3.0.1'):
    in_buffer = allocate(shape=(M1*M2+M2*M3,), dtype=np.int32)
    out_buffer = allocate(shape=(M1*M3,), dtype=np.int32)

for row in range(0,M1):
    for col in range(0,M2):
        A[row][col] = np.random.randint(-5,5)

for row in range(0,M2):
    for col in range(0,M3):
        B[row][col] = np.random.randint(-5,5)

D_truth = np.matmul(np.int32(A),np.int32(B))

if (BLOCK_NUM > 1):
    B_pp = np.concatenate(np.array_split(B,BLOCK_NUM,axis=1)).flatten()
    in_data = np.concatenate((A.flatten(), B_pp))
else:
    in_data = np.concatenate((A.flatten(), B.flatten()))

for i in range(0,len(in_buffer)):
    in_buffer[i] = np.int32(in_data[i])

signal.alarm(5)
print("\n--\n...Data transfer to the board over AXI Stream interface")
start_time = time.time()
try:
    ol.mm_eval.axi_dma.recvchannel.transfer(out_buffer)
    ol.mm_eval.axi_dma.sendchannel.transfer(in_buffer)
    ol.mm_eval.axi_dma.sendchannel.wait()
    print("Sent inputs A and B.")
    ol.mm_eval.axi_dma.recvchannel.wait()
    end_time = time.time()
    print(f"Time spent: {1000*(end_time - start_time)}ms")
    print("Received output D.")
except Exception as exc:
    print("Error: timed out while waiting for data transfer to finish.")
    print(exc)
    exit(1)
signal.alarm(0)

i = 0
for row in range(0,M1):
    for col in range(0,M3):
        D[row][col] = out_buffer[i]
        i += 1

print("\nMatrix A is:")
print(A)
print("\nMatrix B is:")
print(B)
print("\nTrue Answer is:")
print(D_truth)
print("\nYour Answer is:")
print(D)

print("\n##########")
if np.array_equal(D,D_truth):
    print(ascii_thank)
else:
    print(ascii_hisssss)
    print("\nDiff:")
    print(D_truth - D)
print("##########")
