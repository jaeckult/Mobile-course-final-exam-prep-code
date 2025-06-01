// Write a dart function that find maximum between two numbers
//  Write a dart function that find the sum of all odd numbers between start and
// end integer values

void main() {
  // Example usage of the functions
  int max = findMaximum(10, 20);
  print("Maximum: $max"); // Output: Maximum: 20
}

int findMaximum(int a, int b) {
  int max;
  if (a > b) {
    max = a;
  } else {
    max = b;
  }
  return max;
}


