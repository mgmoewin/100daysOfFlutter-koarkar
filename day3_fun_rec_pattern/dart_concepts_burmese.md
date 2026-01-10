# Dart Concepts in Burmese (Dart သဘောတရားများ မြန်မာလို ရှင်းလင်းချက်)

ဒီစာမျက်နှာမှာ Dart programming language ရဲ့ အရေးကြီးတဲ့ အစိတ်အပိုင်းတွေဖြစ်တဲ့ Function များ၊ Records များနဲ့ Patterns များအကြောင်းကို မြန်မာလို အသေးစိတ် ရှင်းပြပေးသွားမှာ ဖြစ်ပါတယ်။

## 1. Functions (ဖန်ရှင်များ)

Function ဆိုတာကတော့ မိမိ program အတွင်းမှာ အလုပ်တစ်ခုခုကို လုပ်ဆောင်ပေးမယ့် code အစုအဝေး တစ်ခုဖြစ်ပါတယ်။ Code တွေကို ထပ်ခါထပ်ခါ မရေးရအောင်လို့ Function တွေကို အသုံးပြုကြပါတယ်။

### အခြေခံ တည်ဆောက်ပုံ (Basic Syntax)

```dart
returnType functionName(parameters) {
  // လုပ်ဆောင်မည့် အလုပ်များ (Body)
  return result; // ရလဒ် ပြန်ပေးခြင်း (optional)
}
```

- **returnType**: Function ကနေ ပြန်ပေးမယ့် data အမျိုးအစား (ဥပမာ - `void`, `int`, `String`)။ ပြန်ပေးစရာ မလိုရင် `void` သုံးပါတယ်။
- **functionName**: Function ရဲ့ နာမည် (ဥပမာ - `calculateTotal`)။
- **parameters**: Function ထဲကို ပို့ပေးမယ့် data တွေ (Input)။

### ဥပမာ (Example)

```dart
// နံပါတ်နှစ်ခု ပေါင်းပေးသော function
int add(int a, int b) {
  return a + b;
}

void main() {
  var result = add(5, 3);
  print(result); // Output: 8
}
```

---

## 2. Records (မှတ်တမ်းများ)

Records ဆိုတာကတော့ data အမျိုးအစား မတူညီတာတွေကို တစ်ခုတည်းအဖြစ် စုစည်းပြီး သိမ်းဆည်းလို့ရတဲ့ နည်းလမ်းတစ်ခု ဖြစ်ပါတယ်။ သူက Class အသေးစားလေး တစ်ခုနဲ့ တူပေမယ့် ပိုပြီး ပေါ့ပါး (lightweight) ပါတယ်။

### ထူးခြားချက်များ
- Data တွေကို အတွဲလိုက် (Bundle) သိမ်းလို့ရတယ်။
- Immutable (ပြောင်းလဲလို့မရ) ဖြစ်တယ်။
- Function ကနေ value တစ်ခုထက်ပိုပြီး return ပြန်ချင်တဲ့အခါ အရမ်းသုံးဝင်ပါတယ်။

### ဥပမာ (Example)

```dart
void main() {
  // Record တစ်ခု တည်ဆောက်ခြင်း
  var person = ('Mg Mg', 25, true); 
  
  print(person.$1); // 'Mg Mg' (name)
  print(person.$2); // 25 (age)
  
  // Named Parameters နဲ့ သုံးခြင်း
  var car = (brand: 'Toyota', year: 2023);
  print(car.brand); // Toyota
}

// Function ကနေ Record ပြန်ပေးခြင်း
(String, int) getUserInfo() {
  return ('Aung Aung', 30);
}
```

---

## 3. Patterns (ပုံစံများ)

Patterns ဆိုတာကတော့ Dart 3.0 မှာ စတင်မိတ်ဆက်ခဲ့တဲ့ feature တစ်ခုဖြစ်ပြီး၊ data တွေကို စစ်ဆေးခြင်း (Matching) နဲ့ data တွေကို ခွဲထုတ်ယူခြင်း (Destructuring) အတွက် အသုံးပြုပါတယ်။

### အဓိက အသုံးပြုပုံများ

1.  **Destructuring (Data ခွဲထုတ်ခြင်း)**:
    List သို့မဟုတ် Record ထဲက data တွေကို variable တွေထဲကို တန်းပြီး ထည့်လိုက်တာမျိုးပါ။

    ```dart
    var numList = [1, 2, 3];
    var [a, b, c] = numList; // a=1, b=2, c=3
    
    var (name, age) = ('Su Su', 20); // name='Su Su', age=20
    ```

2.  **Switch Expressions (Switch ဖြင့် စစ်ဆေးခြင်း)**:
    Data ရဲ့ ပုံစံကို ကြည့်ပြီး ဆုံးဖြတ်ချက်ချရာမှာ သုံးပါတယ်။

    ```dart
    var value = 'a';
    
    // Switch Expression
    var message = switch (value) {
      'a' => 'This is A',
      'b' => 'This is B',
      _ => 'Unknown', // _ က ကျန်တာအားလုံး (default)
    };
    ```

3.  **Validation (Data မှန်မမှန် စစ်ဆေးခြင်း)**:
    JSON data တွေကို parsing လုပ်တဲ့အခါမှာ pattern matching က အရမ်းအသုံးဝင်ပါတယ်။

    ```dart
    var json = {'user': ['Mg Mg', 25]};
    
    // "Design" pattern လို့ ခေါ်ပါတယ်
    if (json case {'user': [String name, int age]}) {
      print('Name: $name, Age: $age');
    }
    ```

## နိဂုံး (Conclusion)

- **Function** က အလုပ်လုပ်ဖို့ (Logic)။
- **Record** က Data တွေကို စုစည်းဖို့ (Data Structure)။
- **Pattern** က Data တွေကို ရှင်းလင်းလွယ်ကူစွာ ကိုင်တွယ်ဖို့ (Data Manipulation)။

ဒီအချက်တွေကို နားလည်ထားရင် Flutter application တွေ ရေးသားတဲ့အခါမှာ ပိုမို သပ်ရပ်ပြီး (Clean Code)၊ ဖတ်ရှုရ လွယ်ကူတဲ့ Code တွေကို ရေးသားနိုင်မှာ ဖြစ်ပါတယ်။
