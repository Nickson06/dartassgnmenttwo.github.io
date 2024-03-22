// Define the Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Define the Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher's information
  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// Define the main class
class School {
  // Method to create student and teacher objects and call their printInfo methods
  void createObjects() {
    // Create a student object
    Student student = Student('Nickson Owino', 25, 15);

    // Create a teacher object
    Teacher teacher = Teacher('Allan Kamau', 35, 'Dart');

    // Print student's information
    student.printInfo();

    // Print teacher's information
    teacher.printInfo();
  }
}

void main() {
  // Create an object of the School class
  School school = School();

  // Call the createObjects method
  school.createObjects();
}
