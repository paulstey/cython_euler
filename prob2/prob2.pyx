import numpy as np


def sum_even_fibs(int max_num):
    '''
    This version is about 3x faster than the NumPy array version.
    '''
    cdef int [:] fib_nums
    arr = np.zeros(int(max_num/3), np.int32)
    fib_nums = arr
    fib_nums[0] = 1
    fib_nums[1] = 1

    cdef int sum_even = 0
    cdef int i = 2

    while fib_nums[i - 1] < max_num:
        fib_nums[i] = fib_nums[i - 1] + fib_nums[i - 2]

        if fib_nums[i] % 2 == 0:
            sum_even += fib_nums[i]
        i += 1
    return sum_even
