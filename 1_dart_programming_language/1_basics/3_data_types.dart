void main() {
  int age = 25;
  double price = 9.99;
  String name = 'Ahmed';
  String city = "Karachi";
  bool isLoggedIn = true;
  bool hasError = false;

  List<String> fruits = ["Apple", "Mango", "Banana"];
  List<dynamic> mixedFruits = ["Apple", "Mango", "Banana", 1, 2, 3];

  Map<String, int> scores = {
    "Waseem": 90,
    "Asfand": 100
  };
  print("age:$age"); // String Interpolation
  String myName = "Waseem Ahmed Baloch";
  print("My Name is: ${myName}");
  print("""
  Age: $age
  Price: $price
  Name: $name
  City: $city
  Is Logged In: $isLoggedIn
  Has Error: $hasError
  Fruits: $fruits
  Mixed Fruits: $mixedFruits
  Scores: $scores
  Scores['Waseem']: ${scores["Waseem"]}
  """);
}