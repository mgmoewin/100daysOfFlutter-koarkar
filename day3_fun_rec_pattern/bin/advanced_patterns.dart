
void main() {
  // 1. Records and Destructuring
  var (name, age) = ('Alice', 30);
  print('Name: $name, Age: $age');

  // 2. Switch Expressions
  var day = 3;
  var dayName = switch (day) {
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    _ => 'Other',
  };
  print('Day: $dayName');

  // 3. Relational Patterns
  var score = 85;
  var grade = switch (score) {
    >= 90 => 'A',
    >= 80 => 'B',
    >= 70 => 'C',
    _ => 'F',
  };
  print('Grade: $grade');

  // 4. Logical Patterns
  var temperature = 25;
  var feeling = switch (temperature) {
    < 10 => 'Cold',
    >= 10 && < 25 => 'Cool',
    >= 25 && < 35 => 'Warm',
    _ => 'Hot',
  };
  print('Feeling: $feeling');

  // 5. Object Patterns
  var person = Person('Bob', 25);
  if (person case Person(name: var n, age: var a)) {
    print('Person extracted: $n information is $a years old');
  }

  // 6. List Patterns
  var numbers = [1, 2, 3];
  if (numbers case [1, var second, 3]) {
    print('Second number is: $second');
  }
}

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}
