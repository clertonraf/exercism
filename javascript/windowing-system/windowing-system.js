// @ts-check

export class Size {
  constructor(_width = 80, _height = 60) {
    this.width = _width;
    this.height = _height;
  }

  resize(newWidth, newHeight) {
    this.width = newWidth;
    this.height = newHeight;
  }
}

export class Position {
  constructor(_x = 0, _y = 0) {
    this.x = _x;
    this.y = _y;
  }

  move(newX, newY) {
    this.x = newX;
    this.y = newY;
  }
}

export class ProgramWindow {
  MIN_SIZE = 1;
  MIN_POSITION = 0;

  constructor() {
    this.size = new Size();
    this.position = new Position();
    this.screenSize = new Size(800, 600);
  }

  screenSizeMinLimit(axis, limit) {
    return [Math.max(axis[0], limit), Math.max(axis[1], limit)];
  }

  screenSizeMaxLimit(axis) {
    return [this.screenSize.width - axis[0], this.screenSize.height - axis[1]];
  }

  minLimit(newParams) {
    if (newParams instanceof Size) {
      return this.screenSizeMinLimit(
        [newParams.width, newParams.height],
        this.MIN_SIZE
      );
    }
    if (newParams instanceof Position) {
      return this.screenSizeMinLimit(
        [newParams.x, newParams.y],
        this.MIN_POSITION
      );
    }
    throw new Error("Type not supported");
  }

  maxLimit(newParams) {
    if (newParams instanceof Size) {
      return this.screenSizeMaxLimit([this.position.x, this.position.y]);
    }
    if (newParams instanceof Position) {
      return this.screenSizeMaxLimit([this.size.width, this.size.height]);
    }
    throw new Error("Type not supported");
  }

  fitToScreenSize(newParams) {
    const [xAxisMax, yAxisMax] = this.maxLimit(newParams);
    const [xAxisMin, yAxisMin] = this.minLimit(newParams);
    if (xAxisMin > xAxisMax || yAxisMin > yAxisMax) {
      return [xAxisMax, yAxisMax];
    }
    return [xAxisMin, yAxisMin];
  }

  resize(newSize) {
    const [xAxis, yAxis] = this.fitToScreenSize(newSize);
    this.size.resize(xAxis, yAxis);
  }

  move(newPosition) {
    const [xAxis, yAxis] = this.fitToScreenSize(newPosition);
    this.position.move(xAxis, yAxis);
  }
}

export function changeWindow(window) {
  const size = new Size(400, 300);
  const position = new Position(100, 150);
  window.resize(size);
  window.move(position);
  return window;
}
