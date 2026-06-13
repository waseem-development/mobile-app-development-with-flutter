class Vehicle {
  void startEngine() {
    print("Engine started standard way.");
  }
}

class ElectricCar extends Vehicle {
  @override
  void startEngine() {
    print("Silent start: Electric motor engaged.");
  }
}

void main() {
  Vehicle myCar = ElectricCar();
  myCar.startEngine(); // Output: Silent start: Electric motor engaged.
}
