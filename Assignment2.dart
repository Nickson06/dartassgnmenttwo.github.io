//task1- Addition
double addTwo(double a, double b) {
  return a + b;
}
//task 2 -subtraction
double subtractTwo(double a, double b) {
  return a - b;
}
//task3- Multiplication
double multiplyTwo(double a, double b) {
  return a * b;
}
//task 4- division
double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw ArgumentError('Cannot divide by zero');
  }
}
//task 5- calculating the lenghth of a string
int stringLength(String str) {
  return str.length;
}
//task 6 -first element of a list
dynamic getFirstElement(List<dynamic> list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    return null; // or handle the empty list case according to your requirements
  }
}

void main() {
  print(addTwo(5, 3)); // Output: 8
  print(subtractTwo(5, 3)); // Output: 2
  print(multiplyTwo(4, 6)); // Output: 24
  print(divideTwo(10, 2)); // Output: 5
  print(stringLength("Hello")); // Output: 5
  print(getFirstElement([1, 2, 3])); // Output: 1
}

