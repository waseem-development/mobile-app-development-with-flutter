void main() {
  int a = 110;
  int b = 33;
  int c = 5;

  print("a + b = ${a+b}");
  print("a - b = ${a-b}");
  print("a * b = ${a*b}");
  print("a / b = ${a/b}");
  print("a ~/ b = ${a~/b}");
  print("a % b = ${a%b}");

  print("a > b = ${a>b}");
  print("a < b = ${a<b}");
  print("a <= b = ${a<=b}");
  print("a >= b = ${a>=b}");
  print("a == b = ${a==b}");
  print("a != b = ${a!=b}");

  print("a is int = ${a is int}");
  print("a is! int = ${a is! int}");

  // Assignment operators
  print("Initial value of c = $c");

  c = 10;
  print("After c = 10 --> c = $c");

  c += 3;
  print("After c += 3 --> c = $c");

  c -= 2;
  print("After c -= 2 --> c = $c");

  c *= 4;
  print("After c *= 4 --> c = $c");

  c ~/= 2;
  print("After c ~/= 2 --> c = $c");

  // Null-aware assignment operator
  int? d;

  print("Initial value of d = $d");

  d ??= 5;
  print("After d ??= 5 --> d = $d");

  d ??= 10;
  print("After d ??= 10 --> d = $d");

  // Ternary operator
  var e = 10;
  var result = e > 12 ? "greater than 12" : "12 or less";
  print(result); // Output: 12 or less

  // Null-Check Operator: expr1 ?? expr2
  var f = null;
  var g = 12;
  var result1 = f ?? g; // a is null, so use b
  print(result1); // Output: 12
}