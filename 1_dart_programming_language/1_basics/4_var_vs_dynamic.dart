void main() {
// 🔵 var
// Type is decided ONCE at assignment and then fixed.
  var x = 20;
  print("x: ${x}");
  x = 10;
  print("x: ${x}");
  // x = "20";
  // print("x: ${x}")

// 🟡 dynamic
// Type can change ANYTIME (no safety checks).
  dynamic y = 10;
  print("y: ${y}");
  y = "hello";   // ✅ OK
  print("y: ${y}");
  y = true;      // ✅ OK
  print("y: ${y}");
}