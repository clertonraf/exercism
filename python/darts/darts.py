def score(x, y):
    quad_points = x*x + y*y
    if(quad_points > 100):
        return 0
    if(quad_points > 25):
        return 1
    if(quad_points > 1):
        return 5
    if(quad_points >= 0):
        return 10