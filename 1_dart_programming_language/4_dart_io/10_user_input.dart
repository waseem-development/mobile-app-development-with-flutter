import 'dart:io';

void main() {
  stdout.write("Enter your name: ");

  String name = stdin.readLineSync() ?? "";

  if (name.trim().isEmpty) {
    name = "Unknown";
  }

  print("Hello \"$name\"");
}