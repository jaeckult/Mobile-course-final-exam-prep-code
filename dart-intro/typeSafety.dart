//type safety checking
import 'dart:core';

void main() {
  // Example of type safety in Dart
  int number = 42; // This is a valid integer
  String text = "Hello, Dart!"; // This is a valid string

  // Uncommenting the following line will cause a compile-time error
  // number = "This is not an integer"; // Error: A value of type 'String' can't be assigned to a variable of type 'int'.

  print(number);
  print(text);
}
