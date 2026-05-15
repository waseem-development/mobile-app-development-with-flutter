import 'dart:core';
void main () {
  String x = "Runes";
  print(x.codeUnitAt(0));
  print(x.codeUnits);
  'A string'.runes.forEach((int rune) {
    var character = new String.fromCharCode(rune);
    print( character);
});
}