// void main() {
//   greet("Aung Aung ");
//   greet("Aung Aung", "Min", false);
//   greet("Aung Aung", "Min");
//   int sum = add(3, 3, 3);
//   print('The sum is: $sum');

//   //
//   int product = multiply(4, 5);
//   print('The product is: $product');

//   // optional parameters
//   displayInfo('Alice');
//   displayInfo('Bob', 25);


//   // personInfo(lastName: 'Min',age: 25, height: 170,firstName: 'Aung Aung');
//   personInfo(height: 170, age: 22, firstName: 'Moe');
// }

// // optional parameters
// void greet(String firstName, [String? lastName, bool isSingle = true]) {
//   print("${lastName != null ? '$firstName $lastName' : firstName} is ${isSingle ? 'single' : 'married'}");
// }



// // arrow function
// int multiply(int a, int b) => a * b;

// // optional parameters
// void displayInfo(String name, [int? age]) {
//   if (age != null) {
//     print('Name: $name, Age: $age');
//   } else {
//     print('Name: $name');
//   }
// }


// // named parameters
// void personInfo({
//    required String firstName, 
//    String? lastName, 
//    required int age, 
//    required int height}) 
// {
//     print("Name: $firstName ${lastName ?? ''}");
//     print("Age: $age years old");
//     print("Height: $height cm");
// }

// void main() {

  // record in use like variable
//   final location = (cityName: 'Yangon', lat: 16.8, long: 96.1);
//   print("City Name is  ${location.cityName}");
//   print("City Lat is ${location.lat}");
//   print("City Long is ${location.long}");

//   final cityName = 'Mandalay';
//   final result = findPositon(cityName);
//   print("City Name is  $cityName");
//   print("City Lat is ${result.lat}");
//   print("City Long is ${result.long}");
  
// }



// positional parameters
// int add(int num1, int num2, int num3) {
//   return num1 + num2 + num3;
// }

// record in use like function return value with named parameters
// ({double lat, double long}) findPositon(String cityName){
//   if(cityName == 'Yangon'){
//     return (lat: 16.8, long: 96.1);
//   }else if(cityName == 'Mandalay'){
//     return (lat: 21.95, long: 95.95);
//   }else{
//     return (lat: 0.0, long: 0.0);
//   }
// }

// record in use like function return value with positional parameters
// (double lat, double long) findPositon1(String cityName){
//   if(cityName == 'Yangon'){
//     return (16.8, 96.1);
//   }else if(cityName == 'Mandalay'){
//     return (21.95, 95.95);
//   }else{
//     return (0.0, 0.0);
//   }
// }


// ==============================
// pattern 
void main() {
  final [first, last, ...rest] = [1, 2, 3, 4, 5];
  print('first result is $first');
  print('last result is ${rest[rest.length - 1]}');
  print('rest result is $rest');
}

