import 'dart:math';

void main() {
  // Example usage of the Circle class
  Circle circle1 = Circle(5);
  print("Circle with radius ${circle1.radius} has area: ${circle1.area()}");
}

class Circle extends Shape {
  double _radius;
  static const double PI = 3.14159265358979323846;
  Circle(this._radius);

  @override
  double area() {
    return PI * pow(_radius, 2);
  }

  get radius => _radius;
}

abstract class Shape {
  double area();
}
