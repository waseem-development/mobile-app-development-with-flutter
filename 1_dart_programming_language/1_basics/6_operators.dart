void main() {
  int a = 110;
  int b = 33;
  int c = 5;

  // =========================
  // 🔵 ARITHMETIC OPERATORS
  // =========================

  print("a + b = ${a + b}"); // +  Addition
  print("a - b = ${a - b}"); // -  Subtraction
  print("a * b = ${a * b}"); // *  Multiplication
  print("a / b = ${a / b}"); // /  Division → gives double
  print("a ~/ b = ${a ~/ b}"); // ~/ Integer division → removes decimal
  print("a % b = ${a % b}"); // %  Modulus → remainder

  // =========================
  // 🟢 RELATIONAL / COMPARISON OPERATORS
  // =========================

  print("a > b = ${a > b}"); // >  Greater than
  print("a < b = ${a < b}"); // <  Less than
  print("a <= b = ${a <= b}"); // <= Less than or equal to
  print("a >= b = ${a >= b}"); // >= Greater than or equal to
  print("a == b = ${a == b}"); // == Equal to
  print("a != b = ${a != b}"); // != Not equal to

  // =========================
  // 🟡 TYPE TEST OPERATORS
  // =========================

  print("a is int = ${a is int}"); // is  → checks if a IS an int
  print("a is! int = ${a is! int}"); // is! → checks if a IS NOT an int

  // =========================
  // 🟠 ASSIGNMENT OPERATORS
  // =========================

  print("Initial value of c = $c");

  c = 10; // =   Assign 10 to c
  print("After c = 10 --> c = $c");

  c += 3; // +=  Add 3 to c, then assign result to c
  print("After c += 3 --> c = $c");

  c -= 2; // -=  Subtract 2 from c, then assign result to c
  print("After c -= 2 --> c = $c");

  c *= 4; // *=  Multiply c by 4, then assign result to c
  print("After c *= 4 --> c = $c");

  c ~/= 2; // ~/= Integer-divide c by 2, then assign result to c
  print("After c ~/= 2 --> c = $c");

  // =========================
  // 🔵 NULL-AWARE ASSIGNMENT OPERATOR
  // =========================

  int? d;

  print("Initial value of d = $d");

  d ??= 5; // ??= Assign 5 ONLY IF d is null
  print("After d ??= 5 --> d = $d");

  d ??= 10; // ??= Does NOT assign because d already has 5
  print("After d ??= 10 --> d = $d");

  // =========================
  // 🟣 TERNARY OPERATOR
  // =========================

  var e = 10;

  // condition ? value_if_true : value_if_false
  var result = e > 12 ? "greater than 12" : "12 or less";

  print(result); // Output: 12 or less

  // =========================
  // 🔴 NULL-COALESCING OPERATOR
  // =========================

  var f = null;
  var g = 12;

  // ?? → Use f if it is NOT null;
  //      otherwise, use g.
  var result1 = f ?? g;

  print(result1); // Output: 12
}

// ARITHMETIC
// +       Add
// -       Subtract
// *       Multiply
// /       Divide
// ~/      Integer divide
// %       Remainder

// COMPARISON
// >       Greater than
// <       Less than
// >=      Greater/equal
// <=      Less/equal
// ==      Equal
// !=      Not equal

// TYPE TEST
// is      Is this type?
// is!     Is NOT this type?

// ASSIGNMENT
// =       Assign
// +=      Add + assign
// -=      Subtract + assign
// *=      Multiply + assign
// ~/=     Integer divide + assign

// NULL
// ??      Use right value if left is null otherwise use left
// ??=     Assign only if variable is null

// TERNARY
// ? :     If/else in one line
