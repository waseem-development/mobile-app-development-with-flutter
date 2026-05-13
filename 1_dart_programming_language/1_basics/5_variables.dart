void main() {
  // Use the var keyword to declare (create) a variable:
  var name = 'Waseem';
  // Or you can specify the type explicitly (more precise, recommended for beginners):
  String friendName = 'Asfand';
  int age = 30;
  double salary = 50000.50;
  /* 
  Uninitialized Variables Are null: If you declare a variable but don't give it a value, it holds a special value called null (meaning
  'nothing' or 'empty')
  */
  int? num;
  print("Value of num is: ${num}");


 /* 
  final: A final variable is set once and cannot be changed after that. Its value is determined when the
  program runs.
 */
  final city = 10;
   print(city);
  //    const: A const variable must be known at compile time (before the program even runs). It is also permanent
  const pi = 3.14;
  const area = pi * 12 * 12; // Valid: computed from other constants
  print(area); // Output: 452.16

  /*  
  late (Delayed initialization)
  ✔ Meaning:

  You promise Dart: “I will assign it later before using it”
  */
  late String greeting;
  greeting = "Hello";
  print(greeting);
}