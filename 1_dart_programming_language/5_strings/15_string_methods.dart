void main() {
  String text = "    Hello\n    ";
  print("text: ${text}");
  print("text.length: ${text.length}");  // Length is a property not a method
  print("text.isNotEmpty: ${text.isNotEmpty}"); // isNotEmpty is also a property
  print("text.isEmpty: ${text.isEmpty}"); // isEmpty is also a property
  print("text.toLowerCase(): ${text.toLowerCase()}");
  print("text.toLowerCase(): ${text.toUpperCase()}");
  print("text.trim(): ${text.trim()}");
  print("text.codeUnits: ${text.codeUnits}"); // Returns an unmodifiable list of the UTF-16 code units of this string.
  print("apple".compareTo("banana")); // Compares two strings lexicographically (dictionary order).
  /* 
    apple < banana → -1
    banana > apple → 1
    apple == apple → 0 
  */
  print("Z".compareTo("A")); // output: 1
  String programmingText = "I love Java. Java is old.";// Replaces ALL matching parts in a string with something else.
  print("programmingText: ${programmingText}");
  print("programmingText.replaceAll(\"Java\", \"Dart\"): ${programmingText.replaceAll("Java", "Dart")}");
  String updated = programmingText
    .replaceAll("Java", "Dart")
    .replaceAll("old", "new");
    print("updated: ${updated}");

  String text1 = "I love Dart language";

  List<String> words = text1.split(" ");

  print(words);
  String word = "dart";
  List<String> letters = word.split("");
  print(letters);

  print(text1.substring(0, 6));
  print(text1.codeUnitAt(0));
}