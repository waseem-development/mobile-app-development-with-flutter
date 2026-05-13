// 15. Functions are objects in Dart
// VERY important.
// You can store functions in variables:

void main() {
  greet("Waseem");
  greet("Ahmed", "Mr.");
  var my_greet_func = greet;
  my_greet_func("Bye", "Bye");
  int result_sum = add(3, 5);
  int result_square = square(10);
  print("Result Function: ${result_sum}");
  print("Result Function: ${result_square}");
  var fruits = ["Apple", "Mango"];

  fruits.forEach((fruit) {
    print(fruit);
  });
  var n = 5;
  var facto = factorial(n);
  print("Factorial of ${n} = ${facto}");
}

void greet(String name, [String? title]) {
  print("Hello ${title} ${name} 👋");
}

int add(int a, int b) {
  return a+b;
}

int square(int n) => n * n;

int factorial(int n) {
  if (n <=1) {
    return 1;
  }
  return n * factorial(n-1);
}