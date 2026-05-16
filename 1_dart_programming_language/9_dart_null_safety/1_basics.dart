void main() {
  String? name = null;
  print(name);
  name = "Waseem";
  print(name);
  int? age = null;
  print(age);
  if (age == null) {
    age = 23;
    print(age);
  }
  List<String>? names = ["Waseem", 'Ahmed'];
  List<String?>? namesNull = ["Waseem", null];
  print(names);
  print(namesNull);
}