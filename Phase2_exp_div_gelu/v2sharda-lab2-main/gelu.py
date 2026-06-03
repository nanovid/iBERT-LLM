import numpy as np


def read_mem(mem_file, bits=32):
    values = []
    with open(mem_file, 'r') as file:
        lines = file.readlines()

    print('\n' + mem_file + '\n--')
    for line in lines:
        line = line.strip()
        value = int(line, 16)
        if value & (1 << (bits - 1)):
            value -= 1 << bits
        values.append(value)
        print(value)
    
    return values


def gelu(qin: np.int32, qb: np.int32, qc: np.int32, q1: np.int32, shift: int) -> np.int32:
    '''
        qin - int32, input
        qb, qc, q1 - int32, fixed inference coefficients
        shift - constant, shift amount
        qout - int32, output, integer approximation of gelu
        all internal signals are int32
    '''
    qsgn = np.sign(qin)
    qmin = np.minimum(np.abs(qin), -qb)     # abs, min
    ql = (qmin + 2 * qb) * qmin + qc        # poly
    qerf = qsgn * ql
    qerf = qerf >> shift                    # shift
    qout = np.int32(qin * (qerf + q1))      # add, mul
    return qout


print('GELU Evaluation Python:')

qb     = np.int32(-1816)
qc     = np.int32(-348738)
q1     = np.int32(-223)
shift  = 14

qin = read_mem('gelu_in.mem')
true = read_mem('gelu_out.mem')

# qin_sf = 0.0013780611334368587
# qout_sf = -3.0957864964875625e-06

print('\nqout\n--')
for qin_i in qin:
    qin_i = np.int32(qin_i)
    qout_i = gelu(qin_i, qb, qc, q1, shift)
    print(qout_i)

