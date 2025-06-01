import 'dart:math';

void main() {
  // Example usage of the Circle class
  Circle circle1 = Circle(5);
  print("Circle with radius ${circle1.radius} has area: ${circle1.area()}");

  Circle circle2 = Circle.inMeter(10);
  print("Circle with radius ${circle2.radius} has area: ${circle2.area()}");
}

class Circle {
  double _radius;
  static const double PI = 3.14159265358979323846;
  Circle(this._radius);
  Circle.inMeter(this._radius);
  double area() {
    return PI * pow(_radius, 2);
  }

  get radius => _radius;
}
