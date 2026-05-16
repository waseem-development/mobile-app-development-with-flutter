void test(String? firstName, String? middleName, String? lastName) {
  String? name = firstName;
  name ??= middleName;
  name ??= lastName;
  print("Result: ${name ?? 'all null'}");
}

void main() {
  // Case 1: firstName is provided
  test("Hafiz", "Waseem", "Ahmed");  // Result: Hafiz

  // Case 2: firstName is null
  test(null, "Waseem", "Ahmed");     // Result: Waseem

  // Case 3: firstName and middleName are null
  test(null, null, "Ahmed");         // Result: Ahmed

  // Case 4: all null
  test(null, null, null);            // Result: all null
}