//
class Shape {
  constructor(name) {
    this.name = name;
  }

  displayName() {
    console.log(`Shape: ${this.name}`);
  }
}

class Circle extends Shape {
  constructor(radius) {
    super("Circle");
    this.radius = radius;
  }

  calculateArea() {
    const area = Math.PI * this.radius * this.radius;
    console.log(`Area of ${this.name}: ${area.toFixed(2)}`);
  }
}

const c1 = new Circle(5);
c1.displayName();
c1.calculateArea();