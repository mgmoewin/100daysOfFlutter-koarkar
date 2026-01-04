// void main() {
//   // String userName; // definition;
//   // userName = 'Moe Win'; // assignment;

//   String userName = 'Moe Win'; // definition + assignment;
//   int age = 22;
//   double height = 5.7;
//   bool single = true;
//   List<String> hobbies = ['football', 'Traveling', 'Reading'];

//   print(
//     "$userName is $age years old, his height is $height inches tall, he is ${single ? 'single' : 'married'} and his hobbies are $hobbies.",
//   );
// }

// void main() {
// var keyword is used to define a variable without specifying its data type explicitly. The Dart compiler infers the data type based on the assigned value.
// Once a variable is defined with var, its data type is fixed and cannot be changed later in the code.
// However, the value of the variable can be changed as long as the new value is of the same data type.

// var keyword ကို data type ကို တိတိကျကျ မရေးဘဲ variable တစ်ခုကို ကြေညာဖို့ အသုံးပြုပါတယ်။
// Dart compiler က assign လုပ်ထားတဲ့ value ကို ကြည့်ပြီး data type ကို အလိုအလျောက် ခန့်မှန်းပေးပါတယ်။
// var နဲ့ ကြေညာပြီးသွားတဲ့ variable ရဲ့ data type ကို နောက်ပိုင်းမှာ ပြောင်းလို့မရတော့ပါဘူး။
// ဒါပေမယ့် value ကိုတော့ အဲ့ဒီ data type အတိုင်းပဲ ဖြစ်နေသရွေ့ ပြန်ပြောင်းနိုင်ပါတယ်။

// var rollOne = 'Moe Win';
// print("2025 batch, Roll No. 1 is $rollOne");
// rollOne = 'Aung Aung';
// print("2026 batch, Roll No. 1 is $rollOne");
// rollOne = 'Su Su';
// print("2027 batch, Roll No. 1 is $rollOne");

// var age = 21;
// age = 22;
// print(age);

// final keyword is used to define a variable whose value cannot be changed once it has been assigned. In other words, a final variable is immutable.
// final keyword ကို variable တစ်ခုကို ကြေညာဖို့ အသုံးပြုပါတယ်၊ အဲ့ဒီ variable ရဲ့ value ကို တစ်ကြိမ် assign လုပ်ပြီးရင် ပြန်ပြောင်းလဲလို့ မရတော့ပါဘူး။
// အခြားအားလုံးမှာ final variable ဆိုတာ မပြောင်းလဲနိုင်တဲ့ variable ဖြစ်ပါတယ်။

// final empolyeeID = 'EMP12345';
// // empolyeeID = 'EMP54321'; // Error: Can't assign to the final variable 'empolyeeID'
// print("Employee ID is $empolyeeID");

// const is used to define a variable whose value is constant and cannot be changed at compile-time. In other words, a const variable is also immutable, but it must be assigned a value that is known at compile-time.
// const ကို variable တစ်ခုကို ကြေညာဖို့ အသုံးပြုပါတယ်၊ အဲ့ဒီ variable ရဲ့ value ကို compile-time မှာ သိထားရမယ်၊ ပြန်ပြောင်းလဲလို့ မရတော့ပါဘူး။
// const variable ဆိုတာ မပြောင်းလဲနိုင်တဲ့ variable ဖြစ်ပါတယ်၊ ဒါပေမယ့် compile-time မှာ သိထားတဲ့ value ကိုသာ assign လုပ်နိုင်ပါတယ်။

// final နှင့် const အကြား ကွာခြားချက်
// final variable ကို runtime မှာ value assign လုပ်နိုင်ပြီး တစ်ကြိမ် assign လုပ်ပြီးသွားရင် ပြန်ပြောင်းလို့ မရတော့ပါဘူး။
// const variable ကိုတော့ compile-time မှာတင် value ကို သိထားရပြီး runtime မှာ assign လုပ်လို့ မရပါဘူး။
// ထို့ကြောင့် const variable တွေမှာ compile-time constant value တွေကိုသာ အသုံးပြုနိုင်ပါတယ်။

// const appVersion = '1.0.0';
// const appColors = ['red', 'green', 'blue'];
// // appVersion = '1.0.1'; // Error: Can't assign to the final variable 'appVersion'
// print("App Version is $appVersion");
// print("App Colors are $appColors");

// }

// control flow statements: if-else, switch-case, for loop, while loop, do-while loop
// void main() {
//   int temperature = 30;

//   if (temperature > 30) {
//     print("It's a hot day.");
//   } else if (temperature >= 20 && temperature <= 30) {
//     print(" It's a warm day.");
//   } else {
//     print("It's a cold day.");
//   }
// }

// ==========================================================

// Ternary operator is a shorthand expression for if-else.
// It evaluates a condition and produces one value if the condition is true,
// or another value if the condition is false.

// Ternary operator ဆိုတာ if-else ကို အတိုချုံးရေးသားနိုင်တဲ့ expression တစ်ခု ဖြစ်ပါတယ်။
// condition တစ်ခုကို စစ်ပြီး မှန်ရင် value တစ်ခု၊ မှားရင် အခြား value တစ်ခုကို ထုတ်ပေးပါတယ်။

// void main() {
//   bool isSingle = true;
//   // String status = isSingle ? 'single' : 'married';
//   // print("The person is $status.");
//   print('The person is ${isSingle ? 'single' : 'married'}');
// }

// void main() {
//   int temp = 10;

//   // String weather = temp > 30
//   //     ? "hot day"
//   //     : (temp >= 20 && temp <= 30)
//   //         ? "warm day"
//   //         : "cold day";

//   print(
//     "The weather is ${temp > 30
//         ? 'hot day'
//         : (temp >= 20 && temp <= 30)
//         ? 'warm day'
//         : 'cold day'}",
//   );
// }

// ==========================================================

// comparison operators: ==, !=, >, <, >=, <=
// comparison operators တွေက ==, !=, >, <, >=, <= တို့ ဖြစ်ပါတယ်။

// These operators are used to compare two values and return a boolean result (true or false).
// ဒီ operators တွေကို နှစ်ခုသော value တွေကို နှိုင်းယှဉ်ဖို့ အသုံးပြုပြီး boolean result (true or false) ကို ပြန်ပေးပါတယ်။

// void main() {
//   int a = 10;
//   int b = 20;

//   print("a == b: ${a == b}"); // false
//   print("a != b: ${a != b}"); // true
//   print("a > b: ${a > b}"); // false
//   print("a < b: ${a < b}"); // true
//   print("a >= b: ${a >= b}"); // false
//   print("a <= b: ${a <= b}"); // true
// }

// ==========================================================
// enum keyword ကို နာမည်ပေးထားတဲ့ constant value တွေကို စုစည်းထားတဲ့ data type အသစ်တစ်ခု ဖန်တီးဖို့ အသုံးပြုပါတယ်။
// enum ကို အသုံးပြုခြင်းအားဖြင့် value တွေကို ကန့်သတ်ထားနိုင်ပြီး type safety ကို ပိုမိုကောင်းမွန်စေပါတယ်။
// enum value တွေကို dot notation (EnumName.value) နဲ့ access လုပ်နိုင်ပါတယ်။
// enum တွေကို if-else / switch-case, loop, function parameter နှင့် return type အဖြစ် အသုံးပြုနိုင်ပါတယ်။

// enum TravelStatus { planning, traveling, completed, canceled }

// // shorthand way to define enum
// void main() {
//   // old way to define enum
//   TravelStatus status = TravelStatus.planning;
//   Duration duration = Duration(days: 5);
//   print("${status.name} for ${duration.inDays} days");

//   // new shorthand way to define enum
//   TravelStatus status2 = .planning;
//   Duration duration2 = .new(days: 65);
//   print("${status2.name} for ${duration2.inDays} days");
// }
