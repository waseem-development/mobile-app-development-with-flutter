import "dart:io";
void main() {
  // List Operations: Adding Elements (single Element)
  var list = [1, 2, 3];
  list.add(4);
  stdout.write("${list}\n");
  list.insert(0, 7);
  stdout.write("${list}\n");

  // List Operations: Adding Elements (Multiple Element)
  list.insertAll(0, [78, 79, 80]);
  stdout.write("${list}\n");

  // List Operations: Sorting a List (Ascending Order)
  list.sort();
  stdout.write("${list}\n");

  // List Operations: Sorting a List (Descending Order)
  list.sort((a,b) => b.compareTo(a));
  stdout.write("${list}\n");
  
  // List Operations: Sorting a List: Sort Strings Alphabetically
  List<String> names = ["Zubair Ahmed", "Waseem", "Ahmed"];
  names.sort();
  stdout.write("${names}\n");

  // List Operations: Sorting a List: Sort Strings by Length
  names.sort((a,b) => b.length.compareTo(a.length));
  stdout.write("${names}\n");
}