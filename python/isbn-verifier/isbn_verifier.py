def is_valid(isbn):
    no_format_isbn = isbn.replace('-', '')
    if(len(no_format_isbn) != 10):
        return False
    sum = 0
    for idx, x in enumerate(no_format_isbn[::-1]):
        if x.isdigit() or (x.lower() == 'x' and x.lower() == no_format_isbn[-1].lower()):
            if x.lower() == 'x':
                sum += 10 * (idx+1)
            else:
                sum += (int(x)*(idx+1))
        else:
            return False
    return sum % 11 == 0