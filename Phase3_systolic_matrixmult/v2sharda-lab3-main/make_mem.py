import os
import sys
import numpy as np


def dec2hex(dec_num, nbits):
    bit_range = (1 << nbits) - 1
    hlen = int(np.ceil(nbits/4))
    hex_num = format(dec_num & bit_range, f'0{hlen}x')
    return hex_num


def write_mem(name, matrix, nbits=8):
    hex_lines = [dec2hex(num, nbits=nbits) for num in matrix.flatten()]
    with open(f"{name}.mem", "w") as mem:
        mem.write("\n".join(hex_lines) + "\n")


def create_mem(name, dim1, dim2, nbits=8, blocks=1, debug=False, identity=False):
    if debug:
        if identity:
            matrix = np.eye(dim1, dtype=np.int8)
        else:
            matrix = np.arange(dim1 * dim2, dtype=np.int8).reshape(dim1, dim2)
    else:
        matrix = np.random.randint(-5, 5, size=(dim1, dim2), dtype=np.int8)

    write_mem(name=name, matrix=matrix, nbits=nbits)

    if blocks > 1: #
        block_matrix = np.concatenate(np.array_split(matrix, blocks, axis=1))
        write_mem(name=f"{name}_pp", matrix=block_matrix, nbits=nbits)


def main():
    M1 = int(sys.argv[1])
    M2 = int(sys.argv[2])
    M3 = int(sys.argv[3])
    BLOCKS = int(sys.argv[4])
    REUSE = int(sys.argv[5])
    DEBUG = bool(int(sys.argv[6]))
    
    np.random.seed(0)
    for r in range(REUSE):
        create_mem(name=f"A{r}", dim1=M1, dim2=M2, nbits=8, debug=DEBUG)
        create_mem(name=f"B{r}", dim1=M2, dim2=M3, nbits=8, blocks=BLOCKS, debug=DEBUG)
    os.system("cat $(ls A[0-9].mem) > A.mem")
    os.system("cat $(ls B[0-9].mem) > B.mem")
    if BLOCKS > 1:  # temp hack 1
        os.system("cat $(ls B[0-9]_pp.mem) > B_pp.mem")


if __name__ == "__main__":
    main()
