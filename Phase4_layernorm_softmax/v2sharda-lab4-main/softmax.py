import numpy as np


def read_mem(mem_file, bits=32):
    values = []
    with open(mem_file, 'r') as file:
        lines = file.readlines()

    for line in lines:
        line = line.strip()
        value = int(line, 16)
        if value & (1 << (bits - 1)):
            value -= 1 << bits
        values.append(value)
    
    return values


def exp(qin: np.int32, qb: np.int32, qc: np.int32, qln2: np.int32, qln2_inv: np.int32, fp_bits: int) -> np.int32:
    '''
        qin - int32, input
        qb, qc, qln2, qln2_inv - int32, fixed inference coefficients
        fp_bits - constant, fixed point multiplication bits
        qout - int32, output, integer approximation of exp
        all internal signals are int64
    '''
    fp_mul = np.int64(qin) * qln2_inv   # mul
    z = fp_mul >> fp_bits
    qp = qin - z * qln2                 # mul, sub
    ql = (qp + qb) * qp + qc            # poly
    qout = np.int32(ql >> z)            # shift
    return qout


def softmax(qin: np.int32, qb: np.int32, qc: np.int32, qln2: np.int32, qln2_inv: np.int32, fp_bits: int,
             Sreq: np.int32, max_bits: int, out_bits: int) -> np.int8:
    '''
        qin - int32, input
        qb, qc, qln2, qln2_inv - int32, fixed inference coefficients for exp
        fp_bits - constant, fixed point multiplication bits
        Sreq - int32, requantization coefficient
        max_bits, out_bits - integer constants
        qout - int8, output, integer approximation of softmax
    '''
    divident = np.int32(2 ** max_bits)                      # int32, constant
    shift = max_bits - out_bits

    qmax = qin.max(axis=-1, keepdims=True)                  # max, int32, reduction operation
    qhat = qin - qmax                                       # sub, int32
    qexp_32 = exp(qin=qhat, qb=qb, qc=qc, qln2=qln2, 
                   qln2_inv=qln2_inv, fp_bits=fp_bits)      # exp, int32
    qexp_64 = np.int64(qexp_32) * Sreq                      # mul, int64
    qreq = np.round(qexp_64 * 2**(-fp_bits))                # shift and round, int16
    qreq = np.int16(qreq)
    qsum = qreq.sum(axis=-1, keepdims=True,
                       dtype=np.int32)                      # acc, int32
    factor = np.floor(divident / qsum)                      # div, constant / scalar
    factor = np.int32(factor)
    qout = qreq * factor                                    # mul
    qout = np.int8(qout >> shift)                           # shift
    return qout


def main():
    print('Starting Softmax Evaluation Python...')

    # layer0 coefs
    qb       = np.int32(1874)
    qc       = np.int32(1338211)
    qln2     = np.int32(-480)
    qln2_inv = np.int32(-2236963)
    Sreq     = np.int32(26291085)
    fp_bits  = 30
    max_bits = 30
    out_bits = 6

    qin = read_mem('data32/softmax/softmax_in.mem')
    true = read_mem('data32/softmax/softmax_out.mem')

    qin = np.reshape(qin, (32,32))
    true = np.reshape(true, (32,32))

    for row in range(32):
        qin_i = np.int32(qin[row])
        qout_i = softmax(qin_i, qb, qc, qln2, qln2_inv, fp_bits, 
                        Sreq, max_bits, out_bits)
        # print(row, np.all(qout_i == true[row]))

    print("Finished Softmax Evaluation.")


if __name__ == "__main__": 
    main()

