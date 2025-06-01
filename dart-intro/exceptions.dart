import 'functions.dart'; //see how we imported another file from the dart-intro folder

void main() {
  // Example usage of the function
  try {
    int result = findMaximum(10, 9);
    print("Result: $result");
  } catch (e) {
    print("Caught an exception: $e");
  }

  //if you want to see how the on keyword works, here it only catches a format exception.
  try {
    int result = findMaximum(10, 20);
    print("Result: $result");
  } on FormatException catch (e) {
    print("Caught an exception: $e");
  }

  //or you can use catch and on together to catch a specific exception and then catch the whole thing
  try {
    int result = findMaximum(10, 20);
    print("Result: $result");
  } on FormatException catch (e) {
    print("Caught a format exception: $e");
  } catch (e) {
    print("Caught an exception: $e");
  }
}
