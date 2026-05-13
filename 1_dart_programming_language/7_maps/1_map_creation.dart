import "dart:io";
void main() {
  // Declaring a Map using Map Literals
  var details = {
    "Username": "waseem-development",
    "Password": "Why_Should_I_Tell_You_My_Password???",
  };
  stdout.write("\nDetails: ${details}. \n\n");

  // 11.2 Declaring a Map using the Map Constructor
  var myNewDetails = new Map();
  myNewDetails['Username'] = 'admin';
  myNewDetails['Password'] = 'admin@123';

  stdout.write("\n ${myNewDetails} \n\n");

  // Adding Values to a Map at Runtime
  details['Uid'] = 'U1oo1';
  stdout.write("\nDetails: ${details}. \n\n");
}