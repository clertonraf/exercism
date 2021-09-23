class Matrix:
    def __init__(self, matrix_string):
        self.rows = [[int(i) for i in x.split(' ')] for x in matrix_string.split('\n')]

    def row(self, index):
        return self.rows[index-1]

    def column(self, index):
        return [x[index-1] for x in self.rows]
