import "dart:io";

class LivingThing {
  void run() {
    stdout.write("Living thing is Running\n");
  }

  void move() {
    stdout.write("Living thing is Move\n");
  }

  void breath() {
    stdout.write("Living thing is Breathing\n");
  }
}

class Person extends LivingThing {
  final String name;
  Person(this.name);
}

void test() {
  final person1 = Person("Waseem\n");
  stdout.write("Your name: ${person1.name}");
  person1.run();
  person1.breath();
}

void main() {
  stdout.write("Hello World\n");
  test();
}
