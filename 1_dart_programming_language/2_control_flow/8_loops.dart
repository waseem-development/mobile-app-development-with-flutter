void main() {
  // for (var i = 1; i < 101; i++) {
  //   print("I am a loop and this is my ${i}th iteration");
  // }

  //  outerloop: // This is the label name 
   
  //  for (var i = 0; i < 5; i++) { 
  //     print("Innerloop: ${i}"); 
  //     innerloop: 
      
  //     for (var j = 0; j < 5; j++) { 
  //        if (j > 3 ) break ; 
         
  //        // Quit the innermost loop 
  //        if (i == 2) break innerloop; 
         
  //        // Do the same thing 
  //        if (i == 4) break outerloop; 
         
  //        // Quit the outer loop 
  //        print("Innerloop: ${j}"); 
  //     } 
  //  } 

  // outerloop: // This is the label name 
   
  //  for (var i = 0; i < 3; i++) { 
  //     print("Outerloop:${i}"); 
      
  //     for (var j = 0; j < 5; j++) { 
  //        if (j == 3){ 
  //           continue outerloop; 
  //        } 
  //        print("Innerloop:${j}"); 
  //     } 
  //  }


  // List<String> fruits = ["Apple", "Mango", "Banana"];

  // for (var fruit in fruits) {
  //   print(fruit);
  // }

  // List<int> nums = [1, 2, 3, 4];

  // for (var n in nums) {
  //   print(n);
  // }
  // String name = "Waseem";

  // for (var ch in name.split('')) {
  //   print(ch);
  // }

  //   Set<String> cities = {"Karachi", "Lahore", "Quetta"};

  // for (var city in cities) {
  //   print(city);
  // }

  //   Map<String, int> scores = {
  //   "Waseem": 90,
  //   "Asfand": 100
  // };

  // for (var entry in scores.entries) {
  //   print("${entry.key}: ${entry.value}");
  // }
  var i = 0;
  while (i < 5) {
    print("i: ${i}");
    i++;
  }
  int j = 1;
  do {
    print("""Bye
${j}""");
    j++;
  } while (j > 10);
}