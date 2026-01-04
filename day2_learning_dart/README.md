# Day 2: Dart Fundamentals & Travel Planner CLI

This session focused on foundational Dart concepts, moving from basic variable declarations to more complex structures like enums and control flow. The learning was applied by building a simple command-line interface (CLI) application: a Travel Planner.

## 📚 Core Concepts Covered

The `day2_learning_dart.dart` file contains notes and examples (in both English and Burmese) for the following topics:

- **Variables & Data Types:**
  - Explicitly typed variables: `String`, `int`, `double`, `bool`, `List`.
  - Type inference with the `var` keyword.
- **Immutability:**
  - `final`: For variables that are assigned once at runtime.
  - `const`: For variables that are compile-time constants.
- **Control Flow:**
  - `if-else` statements for conditional logic.
  - The ternary operator (`condition ? expr1 : expr2`) as a shorthand for `if-else`.
- **Operators:**
  - Comparison operators (`==`, `!=`, `>`, `<`, `>=`, `<=`) for evaluating conditions.
- **Enumerations (`enum`):**
  - Defining a custom type with a fixed set of constant values.
  - Using enums to improve type safety and code clarity.

## ✈️ Project: Travel Planner CLI

The `travel_planner.dart` file is a practical command-line application that demonstrates the concepts learned.

### Description

The Travel Planner asks the user for details about their trip and suggests the best mode of transportation. It calculates the total estimated cost and checks if it's within the user's budget.

### Features

- **User Input:** The application prompts the user for:
  - Travel distance (in kilometers).
  - Budget.
  - Urgency of the travel.
  - Number of travelers.
- **Logic:** It uses a series of `if-else` conditions to determine the most suitable `TravelMode` based on distance, budget, and urgency.
- **Enum with Methods:** The `TravelMode` enum includes a `multiplier` getter to adjust the cost based on the selected travel type, showcasing a more advanced use of enums.

  ```dart
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
  ```

- **Cost Calculation:** It calculates a base cost and then applies the travel mode's multiplier to get the final estimated cost per person and the total for all travelers.
- **Output:** It prints a clear summary of the travel plan, including the suggested mode, the reason for the suggestion, and a budget analysis.

### How to Run the Application

1.  Navigate to the `bin` directory:
    ```sh
    cd bin
    ```
2.  Run the Dart file from your terminal:
    ```sh
    dart run travel_planner.dart
    ```
