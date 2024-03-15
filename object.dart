import 'dart:io';

// Define an interface
abstract class Animal {
  void speak();
}

// Define a base class implementing the interface
class Dog implements Animal {
  @override
  void speak() {
    print("Woof!");
  }
}

// Define a derived class overriding the speak method
class Cat implements Animal {
  @override
  void speak() {
    print("Meow!");
  }
}

// Define a class that initializes data from a file
class Zoo {
  List<Animal> animals = [];

  Zoo(String filename) {
    var file = File(filename);
    var lines = file.readAsLinesSync();
    for (var line in lines) {
      var animalData = line.split(',');
      var animalType = animalData[0];
      var name = animalData[1];
      if (animalType == 'Dog') {
        animals.add(Dog());
      } else if (animalType == 'Cat') {
        animals.add(Cat());
      }
    }
  }

  void displayAnimals() {
    for (var animal in animals) {
      animal.speak();
    }
  }
}

// Define a method that demonstrates the use of a loop
void printNumbers() {
  for (var i = 1; i <= 5; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of Zoo and initialize data from a file
  var zoo = Zoo("animals.txt");
  // Display the animals
  zoo.displayAnimals();
  // Demonstrate the use of a loop
  printNumbers();
}

