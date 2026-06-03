from math import floor, log2


def read_mem(mem_file):
    values = []
    with open(mem_file, 'r') as file:
        lines = file.readlines()

    print('\n' + mem_file + '\n--')
    for line in lines:
        line = line.strip()
        value = int(line, 16)
        values.append(value)
        print(value)
    
    return values


def div(dividend: int, divisor: int) -> int:
    '''
        dividend - input, numerator, positive integer
        divisor - input, denominator, positive integer
        quotient - output, positive integer
    '''
    remainder = dividend
    quotient = 0
    divisor_log2 = floor(log2(divisor))             # LOPD
    while (remainder >= divisor):
        remainder_log2 = floor(log2(remainder))     # LOPD
        msb = remainder_log2 - divisor_log2         # sub
        A = divisor << msb                          # shift  
        B = A >> 1                                  # shift
        if remainder < A:
            remainder = remainder - B               # sub
            quotient = quotient + 2**(msb-1)        # shift, add
        else:
            remainder = remainder - A               # sub
            quotient = quotient + 2**msb            # shift, add
    return quotient


print('Div Evaluation Python:')

max_bits = 30
in_dividend = read_mem('div_in_dividend.mem')
in_divisor = read_mem('div_in_divisor.mem')
true = read_mem('div_out.mem')

print('\noutput:\n--')

for dividend, divisor in zip(in_dividend, in_divisor):
    quotient = div(dividend, divisor)
    print(f'dividend={dividend}, divisor={divisor}, quotient={quotient}, true={dividend // divisor}')

