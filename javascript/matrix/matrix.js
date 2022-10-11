export class Matrix {
  constructor(initialMatrix) {
    this.matrix = initialMatrix
      .split("\n")
      .map((element) => element.split(" ").map((number) => Number(number)));

    this.transpose = Array(this.matrix[0].length)
      .fill()
      .map((_, index) => this.matrix.map((row) => row[index]));
  }

  get rows() {
    return this.matrix;
  }

  get columns() {
    return this.transpose;
  }
}
