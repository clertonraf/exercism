def slices_rec(series, length, result):
    size = len(series)
    if size < length:
        return result
    else:
        result.append(series[:length])
        return slices_rec(series[1:], length, result)

def slices(series, length):
    if len(series) < length or length <= 0:
        raise ValueError("Wrong length number")
    result = []
    return slices_rec(series, length, result)