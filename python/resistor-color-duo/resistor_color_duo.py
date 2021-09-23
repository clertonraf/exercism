def color_code(color):
    return colors_list().index(color)

def colors_list():
    return [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white",
]

def value(colors):
    return int("".join([str(color_code(x)) for x in colors[:2]]))