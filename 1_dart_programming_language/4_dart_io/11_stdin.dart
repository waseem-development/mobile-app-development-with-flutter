import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  if (name == null || name.trim().isEmpty) {
    name = "Unknown";
  }
  
  stdout.write("Enter your age: ");
  String? userAgeInput = stdin.readLineSync();
  int? age = int.tryParse(userAgeInput ?? "");

  stdout.write("Enter your Salary: ");
  String? userSalaryInput = stdin.readLineSync();
  int? salary = int.parse(userSalaryInput!);

  stdout.write("Enter your Height: ");
  String? heightInput = stdin.readLineSync();
  double? height = double.tryParse(heightInput ?? "");

  print("Hello ${name}. \nYour age is: ${age}. \nYour Salary is ${salary}.\nYour height is ${height}");

}