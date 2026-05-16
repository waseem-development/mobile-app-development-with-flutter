void main() {
  const String? firstName = null;
  const String? middleName = null;
  const String? lastName = "Ahmed";
  // if (firstName != null) {
  //   print("First name is non-null value");
  // } else if(middleName != null) {
  //   print("First name is null value");
  // } else if (lastName != null) {
  //   print("First name is non-null value");
  // }

  const firstNonNullValue = firstName ?? middleName ?? lastName;
  print(firstNonNullValue);
} 