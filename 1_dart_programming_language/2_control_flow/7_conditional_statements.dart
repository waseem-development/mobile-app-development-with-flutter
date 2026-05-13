void main() {
  var num = -5;

  if (num > 0) {
    print("Positive");
  } else {
    print("Not positive");
  }

  var score = 90;

  if (score >= 90) {
    print("A grade");
  } else if (score >= 70) {
    print("B grade");
  } else {
    print("Below B");
  }

  var day = "Monday";

  switch (day) {
    case "Monday":
      print("Start of the week!");
      break;

    case "Friday":
      print("Almost weekend!");
      break;

    default:
      print("Midweek day");
  }
}