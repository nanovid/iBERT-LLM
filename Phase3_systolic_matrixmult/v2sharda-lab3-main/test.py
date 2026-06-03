import numpy as np
import math
import sys

M1 = int(sys.argv[1])
M2 = int(sys.argv[2])
M3 = int(sys.argv[3])

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


def hex2dec(hex_num, nbits):
    dec_num = int(hex_num, 16)
    if dec_num & (1 << (nbits - 1)):
        dec_num -= 1 << nbits
    return dec_num


A = np.zeros((int(M1),int(M2)), dtype=np.int8)
B = np.zeros((int(M2),int(M3)), dtype=np.int8)
D = np.zeros((int(M1),int(M3)), dtype=np.int32)

A_mem = open("A.mem")
for row in range(0,M1):
    for col in range(0,M2):
        line = A_mem.readline()
        A[row][col] = hex2dec(line, 8)

B_mem = open("B.mem")
for row in range(0,M2):
    for col in range(0,M3):
        line = B_mem.readline()
        B[row][col] = hex2dec(line, 8)

print("\nMatrix A is:")
print(A)
print("\nMatrix B is:")
print(B)

D_mem = open("D.mem")
for row in range(0,M1):
    for col in range(0,M3):
        line = D_mem.readline()
        if 'x' in line:
            print("\nError: output D.mem contains 'x' values.")
            exit(1)
        D[row][col] = hex2dec(line, 32)

D_truth = np.matmul(np.int32(A),np.int32(B))

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

