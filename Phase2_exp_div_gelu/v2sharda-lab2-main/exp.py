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


def exp(qin: np.int32, qb: np.int32, qc: np.int32, qln2: np.int32, qln2_inv: np.int32, fp_bits: int) -> np.int32:
    '''
        qin - int32, input
        qb, qc, qln2, qln2_inv - int32, fixed inference coefficients
        fp_bits - constant, fixed point multiplication bits
        qout - int32, output, integer approximation of exp
        all internal signals are int64
    '''
    fp_mul = qin * np.int64(qln2_inv)   # mul
    z = fp_mul >> fp_bits
    qp = qin - z * qln2                 # mul, sub
    ql = (qp + qb) * qp + qc            # poly
    qout = np.int32(ql >> z)            # shift
    return qout


print('Exp Evaluation Python:')

qb       = np.int32(1892)
qc       = np.int32(1364807)
qln2     = np.int32(-485)
qln2_inv = np.int32(-2213901)
fp_bits  = 30

qin = read_mem('exp_in.mem')
true = read_mem('exp_out.mem')

qin_sf = 0.0014303126372396946
qout_sf = 7.327041657845257e-07

print('\nqout\n--')
for qin_i in qin:
    qin_i = np.int32(qin_i)
    qout_i = exp(qin_i, qb, qc, qln2, qln2_inv, fp_bits)
    print(qout_i)
    
    # for curious ones, compare qout with actual float exp values
    # qin_f = qin_i * qin_sf
    # qout_f = qout_i * qout_sf
    # print(qout_f, np.exp(qin_f))

