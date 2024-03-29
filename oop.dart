import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Implement the interface with a Dog class
class Dog implements Animal {
  @override
  void makeSound() {
    print('The dog barks.');
  }
}

// Create a parent class
class Shape {
  void draw() {
    print('Drawing a shape.');
  }
}

// Create a child class that overrides the inherited method
class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle.');
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers() {
  for (var i = 1; i <= 5; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of the Dog class
  var dog = Dog();
  dog.makeSound();

  // Create an instance of the Circle class
  var circle = Circle();
  circle.draw();

  // Initialize data from a file
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  print('Data from file:');
  lines.forEach(print);

  // Demonstrate the use of a loop
  print('Numbers from 1 to 5:');
  printNumbers();
}
