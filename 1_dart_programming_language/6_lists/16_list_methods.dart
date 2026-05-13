import "dart:io";

void main() {

  final fixedList = List<int>.filled(5, 0, growable: false);
  stdout.write("${fixedList}\n");

  List<String> myList = [];

  stdout.write("Enter the size of the list: ");
  String? n = stdin.readLineSync();

  int? sizeOfList = int.tryParse(n!);

  if (sizeOfList == null) {
    print("Invalid number!");
    return;
  }

  int count = 0;

  while (count < sizeOfList) {

    stdout.write("Enter element: ");

    String? number = stdin.readLineSync();

    myList.add(number!);

    count++;
  }

  // Accessing Elements
  stdout.write("myList[0]: ${myList[0]}\n");
  stdout.write("myList[1]: ${myList[1]}\n");
  stdout.write("myList[2]: ${myList[2]}\n");

  // Last Element
  stdout.write("myList[sizeOfList-1]: ${myList[sizeOfList - 1]}\n");

  // Properties
  stdout.write("myList.isEmpty: ${myList.isEmpty}\n");
  stdout.write("myList.isNotEmpty: ${myList.isNotEmpty}\n");
  stdout.write("myList.length: ${myList.length}\n");

  // First and Last
  stdout.write("myList.first: ${myList.first}\n");
  stdout.write("myList.last: ${myList.last}\n");

  // Full List
  stdout.write("myList: ${myList}\n");

  // Reverse
  stdout.write("myList.reversed: ${myList.reversed}\n");

  // Sorting
  myList.sort();
  stdout.write("myList.sort(): ${myList}\n");

  // Add Element
  myList.add("NEW");
  stdout.write("After add(): ${myList}\n");

  // Add Multiple Elements
  myList.addAll(["A", "B", "C"]);
  stdout.write("After addAll(): ${myList}\n");

  // Insert at Position
  myList.insert(1, "INSERTED");
  stdout.write("After insert(): ${myList}\n");

  // Insert Multiple
  myList.insertAll(2, ["X", "Y"]);
  stdout.write("After insertAll(): ${myList}\n");

  // Remove by Value
  myList.remove("A");
  stdout.write("After remove(): ${myList}\n");

  // Remove by Index
  myList.removeAt(0);
  stdout.write("After removeAt(): ${myList}\n");

  // Remove Last
  myList.removeLast();
  stdout.write("After removeLast(): ${myList}\n");

  // Contains
  stdout.write("Contains 'B': ${myList.contains("B")}\n");

  // Index Of
  stdout.write("Index of 'B': ${myList.indexOf("B")}\n");

  // Sublist
  stdout.write("Sublist(0,2): ${myList.sublist(0,2)}\n");

  // Join
  stdout.write("Join(): ${myList.join(", ")}\n");

  // Shuffle
  myList.shuffle();
  stdout.write("After shuffle(): ${myList}\n");

  // Clear
  // myList.clear();
  // stdout.write("After clear(): ${myList}\n");

  // Single
  // stdout.write("myList.single: ${myList.single}\n");
}