
def is_multiple_py(n, target):
    res = n % target == 0
    return res


def sum_multiples_py(maxval):
    res = 0
    for i in range(maxval):
        if is_multiple_py(i, 3) or is_multiple_py(i, 5):
            res += i
    return res
