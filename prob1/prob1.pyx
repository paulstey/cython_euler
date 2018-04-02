
def is_multiple(int n, int target):
    cdef bint res
    res = n % target == 0
    return res


def sum_multiples(int maxval):
    cdef int res = 0
    cdef int i
    for i in range(maxval):
        if is_multiple(i, 3) or is_multiple(i, 5):
            res += i
    return res
