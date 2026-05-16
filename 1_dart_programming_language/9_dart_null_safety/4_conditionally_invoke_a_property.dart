void test(List<String>? names) {
  // Old way:
  // final int length;
  // if (names != null) {
  //   length = names.length;
  // } else {
  //   length = 0;
  // }

  // New way:
  final length = names?.length ?? 0;
  print(length);
}

void main() {
  // Case 1: names is provided
  test(["Hafiz", "Waseem", "Ahmed"]);  // Result: 3

  // Case 2: empty list
  test([]);                             // Result: 0

  // Case 3: names is null
  test(null);                           // Result: 0
}