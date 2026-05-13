import "dart:io";

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? "";
}

int? promptInt(String message) {
  String input = prompt(message);
  return int.tryParse(input);
}

void showError(String msg) => stderr.writeln('[ERROR] $msg');

void showInfo(String msg) => stdout.writeln('[INFO] $msg');

void printMenu() {
  print('');
  print('============================');
  print(' STUDENT GRADE TOOL ');
  print('============================');
  print(' 1. Add student grade');
  print(' 2. View all grades');
  print(' 3. Calculate average');
  print(' 4. Exit');
  print('============================');
}

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    printMenu();

    int? choice = promptInt("Select Option (1-4): ");

    if (choice == null) {
      showError("Please enter a valid choice between 1-4.");
      continue;
    }

    switch (choice) {
      case 1:
        String name = prompt("Student Name: ");

        int? grade = promptInt("Grade (0-100): ");

        if (grade == null || grade < 0 || grade > 100) {
          showError('Grade must be between 0 and 100.');
          break;
        }

        students.add({
          'name': name,
          'grade': grade,
        });

        showInfo('Added: $name with grade $grade');
        break;

      case 2:
        if (students.isEmpty) {
          showInfo('No students added yet.');
          break;
        }

        print('');
        print('Name             | Grade');
        print('-----------------+------');

        for (var s in students) {
          String name = s['name'].toString().padRight(16);
          print('$name | ${s["grade"]}');
        }

        break;

      case 3:
        if (students.isEmpty) {
          showError('No students to average.');
          break;
        }

        int total =
            students.fold(
              0,
              (sum, student) => sum + (student['grade'] as int),
            );

        double avg = total / students.length;

        showInfo(
          'Class average: ${avg.toStringAsFixed(1)}',
        );

        break;

      case 4:
        showInfo('Exiting. Goodbye!');
        exit(0);

      default:
        showError('Invalid choice. Enter 1-4.');
    }
  }
}