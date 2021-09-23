def is_pangram(sentence):
    char_map = {}
    for c in range(97, 123):
        char_map.setdefault(chr(c), 0)

    for c in sentence.lower():
        if(c in char_map.keys()):
            char_map[c] += 1

    return False if 0 in char_map.values() else True
