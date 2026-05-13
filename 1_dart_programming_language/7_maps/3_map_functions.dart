import "dart:io";

void main() {

  Map<String, String> personalMap = {
    "Name": "Hafiz Waseem Ahmed",
    "S/O": "Abdul Karim",
  };

  Map<String, String> educationalMap = {};

  educationalMap["Degree"] = "BS Computer Science";
  educationalMap["University"] = "University of Balochistan";
  stdout.write("Information: ${personalMap}\n");
  stdout.write("Information: ${educationalMap}\n");
  personalMap.addAll(educationalMap);

  stdout.write("Information: ${personalMap}\n");
  print("_______________________________________________________________________");
  for (var entry in personalMap.entries) {
    print("${entry.key}: ${entry.value}");
  }
  print("_______________________________________________________________________\n");

  print("_______________________________________________________________________");
  personalMap.forEach((key, value) {
    print("$key : $value");
  });
  print("_______________________________________________________________________\ns");

  personalMap.remove("University");
  print("${personalMap}");
  print("${personalMap.containsKey("S/O")}");
  print("${personalMap.containsValue("Abdul Rahim")}");
}