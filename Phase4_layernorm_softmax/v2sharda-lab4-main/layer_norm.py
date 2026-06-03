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


def layer_norm(qin: np.int32, bias: np.int32, shift: int=6,
               n_inv: int=1398101, max_bits: int=31, fp_bits: int=30) -> np.int32:
    '''
        qin - int32, input
        bias - int32, bias
        shift - integer, shift amount
        n_inv, max_bits - integer constants
        fp_bits - constant, fixed point multiplication bits
        qout - int32, output, integer layer_norm
    '''
    divident = 1 << max_bits

    qsum = np.sum(qin, axis=-1, keepdims=True, dtype=np.int64)      # int64, acc
    q_shift = qin >> shift                                          # int32, shift
    q_sq = q_shift * q_shift                                        # int32, hanled by mac
    qsum_sq = np.sum(q_sq, axis=-1, keepdims=True, dtype=np.int64)  # int64, mac
    
    qmul = qsum * n_inv                                             # int64, mul
    qmean = qmul >> fp_bits                                         # int32, shift
    r = qin - qmean                                                 # int32, sub
    
    qmean_mul = qmean * qsum                                        # int64, mul
    qmean_sq = qmean_mul >> (2 * shift)                             # int32, shift
    var = qsum_sq - qmean_sq                                        # int32, sub
    
    var_sqrt = np.floor(np.sqrt(var))                               # uint16, sqrt
    var_sqrt = np.uint16(var_sqrt)
    std = np.int32(var_sqrt) << shift                               # int32, shift
    factor = np.floor(divident / std.astype(np.float64))            # int32, div
    factor = np.int32(factor)
    
    qout_mul = np.int32(r * factor)                                 # int32, mul
    qout = (qout_mul >> 1) + bias                                   # int32, shift, add
    return qout


print('Starting LayerNorm Evaluation Python...')

shift    = 6
n_inv    = 1398101
fp_bits  = 30
max_bits = 31

qin = read_mem('data/layer_norm/layer_norm_in.mem')
bias = read_mem('data/layer_norm/ln_bias.mem')
true = read_mem('data/layer_norm/layer_norm_out.mem')

# qin = read_mem('data/self_out/layer_norm_in.mem')
# bias = read_mem('data/self_out/ln_bias.mem')
# true = read_mem('data/self_out/layer_norm_out.mem')

# qin = read_mem('data/layer_out/layer_norm_in.mem')
# bias = read_mem('data/layer_out/ln_bias.mem')
# true = read_mem('data/layer_out/layer_norm_out.mem')

qin = np.reshape(qin, (32,768))
true = np.reshape(true, (32,768))

for row in range(32):
    qin_i = np.int32(qin[row])
    qout_i = layer_norm(qin=qin_i, bias=bias, shift=shift,
                        n_inv=n_inv, max_bits=max_bits, fp_bits=fp_bits)
    print(row, np.all(qout_i == true[row]))

print("Finished LayerNorm Evaluation.")
