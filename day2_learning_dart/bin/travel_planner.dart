// Enum ဆိုတာက Enumeration ရဲ့ အတိုကောက်ဖြစ်ပြီး၊
// ဆက်စပ်နေတဲ့ constant value တွေကို စုစည်းထားတဲ့ data type အသစ်တစ်ခု ဖြစ်ပါတယ်။
// ဒီ TravelMode enum ကို ခရီးသွားရာမှာ အသုံးပြုနိုင်တဲ့ transportation mode တွေကို
// သတ်မှတ်ထားတဲ့ value တွေထဲကသာ ရွေးချယ်စေဖို့ အသုံးပြုပါတယ်။
// Enum value တွေကို comma (,) နဲ့ ခွဲပြီး curly braces ({}) အတွင်းမှာ သတ်မှတ်ပါတယ်။
// Enum ကို အသုံးပြုခြင်းအားဖြင့် invalid value တွေကို မသုံးမိအောင် ကာကွယ်နိုင်ပြီး
// code ရဲ့ type safety ကို ပိုမိုကောင်းမွန်စေပါတယ်။

// Enum သည် သတ်မှတ်ထားတဲ့ value တွေထဲကသာ အသုံးပြုစေဖို့ အတွက် သုံးတဲ့ data type ဖြစ်ပါတယ်။

import 'dart:io';

const appVersion = "1.0.0";

/// Travel cost per kilometer in ks
const costPerKm = 2; // in ks

enum TravelMode {
  Flight,
  train,
  bus,
  carRental;

  double get multiplier {
    if (this == .Flight) return 5.0;
    if (this == .train) return 2.5;
    if (this == .bus) return 1.5;
    if (this == .carRental) return 1.0;
    return 0;
  }
}

void main() {
  print(" Travel Planner v$appVersion");

  final plannedAt = DateTime.now();
  print(" Planned at: $plannedAt");

  stdout.write(" Enter travel distance in kilometers: ");
  final distance = int.parse(stdin.readLineSync() ?? '0');
  stdout.write("Budget (\$): ");
  final budget = int.parse(stdin.readLineSync() ?? '0');

  stdout.write("Is this urgent travel? (y/n): ");
  final isUrgent = stdin.readLineSync()?.toLowerCase() == 'y';

  stdout.write("Number of travelers: ");
  final numberOfTravelers = int.parse(stdin.readLineSync() ?? '1');

  print("\n ============== Travel Summary ==============");

  TravelMode selectedMode;
  String reason;

  if (distance > 500) {
    selectedMode = .Flight;
    reason = "Long distance travel";
  } else if (isUrgent && budget >= 3000) {
    selectedMode = .Flight;
    reason = "Urgent travel with enough budget";
  } else if (distance > 200 && budget >= 1500) {
    selectedMode = .train;
    reason = "Not too far with enough budget";
  } else if (budget < 1000) {
    selectedMode = .bus;
    reason = "Budget-friendly option";
  } else {
    selectedMode = .carRental;
    reason = "Personalized travel plan";
  }

  final urgentMessage = isUrgent ? " (Urgent Travel)" : "Chill Travel";

  print(' Travel Plan');
  print(' ------------------------------------------');
  print(' Distance: $distance km');
  print(' Budget: \$$budget');
  print("Urgency: $urgentMessage");

  print(" Result : ");
  print(' Selected Mode: $selectedMode');
  print(' Reason: $reason');
  print(' ------------------------------------------');
  final baseCost = distance * costPerKm;
  final estimatedCost = (baseCost * selectedMode.multiplier).toInt();

  final totalCost = estimatedCost * numberOfTravelers;
  print(' Number of Travelers: $numberOfTravelers');

  print(' Total Estimated Cost for all travelers: \$$totalCost');

  // print(' Estimated Cost: \$$estimatedCost');

  print(totalCost > budget ? 'Over budget' : 'Within budget');
  print(' ------------------------------------------');
}
