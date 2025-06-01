/**
 * Every class in Dart automatically defines an interface.
 * Even though Animal is a normal class (not abstract), you can implement it like an interface.
 */

void main() {
  Animal animal = Dog();
  animal.makeSound();
}

class Animal {
  void makeSound() {
    print("Some sound");
  }
}

class Dog implements Animal {
  @override
  void makeSound() {
    print("Bark");
  }
}
