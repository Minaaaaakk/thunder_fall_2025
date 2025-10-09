void main() {
  //dasgal1
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print("-" * 20);

  //dasgal2
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print("-" * 20);

  //dasgal3
  for (int i = 10; i >= 1; i--) {
    print(i);
  }
  print("-" * 20);

  //dasgal4
  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum = sum + i;
  }
  print(sum);
  print("-" * 20);

  //dasgal5
  List<String> fruits = ['apple', 'kiwi', 'strawberry', 'pineapple'];
  for (String fruit in fruits) {
    print('Би $fruit-д дуртай');
  }
  print("-" * 20);

  //dasgal6
  int number = 7;
  for (int i = 1; i <= 10; i++) {
    print('$number x $i = ${number * i}');
  }
  print("-" * 20);

  //dasgal7
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print('$number-ийн квадрат нь ${number * number}');
  }
  print("-" * 20);

  //dasgal8
  String text = "hello world";
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i] == "l") {
      count += 1;
    }
  }
  print('$text дотор "l" үсэг $count удаа орсон байна.');
  print("-" * 20);

  //dasgal9
  List<String> letters = ['a', 'b', 'c'];
  for (int i = 0; i < letters.length; i++) {
    print('Индекс $i: ${letters[i]}');
  }
  print("-" * 20);

  //dasgal10
  List<int> nums = [10, 45, 23, 98, 12];
  int max = nums[0];
  for (int number in nums) {
    if (number > max) {
      max = number;
    }
  }
  print('Maximum number: $max');
  print("-" * 20);

  //dasgal11
  for (int i = 2; i <= 5; i++) {
    print("*" * i);
  }
  print("-" * 20);

  //dasgal12
  List<Map<String, dynamic>> user_info = [{'name': 'Mike', 'age': 21}, {'name': 'Ronald', 'age': 30}];
  for (var person in user_info) {
    print(person["name"]);
  }
  print("-" * 20);

  //dasgal13
  List<int> numbers13 = [5, 12, 8, 15, 3, 18];
  List<int> numbers_more_than_ten = [];
  for (int number in numbers13) {
    if (number > 10) {
      numbers_more_than_ten.add(number);
    }
  }
  print('10-аас их тоонууд: $numbers_more_than_ten');
  print("-" * 20);

  //dasgal14
  List<int> numbers14 = [1, 2, 3, 4, 5, 6];
  int total = 0;
  for (int number in numbers14) {
    if (number % 2 == 0) {
      total += number;
    }
  }
  print('Total of even numbers: $total');
  print("-" * 20);

  //dasgal15
  String text15 = "hello";
  String reversed_text = "";
  for (int i = 0; i < text15.length; i++) {
    reversed_text = text15[i] + reversed_text;
  }
  print('Reversed text: $reversed_text');
  print("-" * 20);

  //dasgal16
  int number16 = 27;
  bool isPrime = true;
  if (number16 <= 1) {
    isPrime = false;
  }
  for (int i = 2; i < number16; i++) {
    if (number16 % i == 0) {
      isPrime = false;
    }
  }
  print('Is $number16 a prime number? $isPrime');
  print("-" * 20);

  //dasgal17
  List<int> fibonacci = [];
  int a = 0;
  int b = 1;
  fibonacci.add(a);
  for (int i = 1; i < 10; i++) {
    int c = a + b;
    a = b;
    b = c;
    fibonacci.add(a);
  }
  print(fibonacci);
  print("-" * 20);

  //dasgal18
  for (int i = 0; i < 5; i++) {
    String row = '';
    for (int j = 0; j < 5; j++) {
      row += "*";
    }
    print(row);
  }
  print("-" * 20);

  //dasgal19
  List<int> list1 = [1, 2, 3, 4];
  List<int> list2 = [3, 4, 5, 6];
  List<int> new_list = [];
  for (int num in list1) {
    for (int num1 in list2) {
      if (num == num1) {
        new_list.add(num);
      }
    }
  }
  print(new_list);
  print("-" * 20);

  //dasgal20
  int number20 = 5;
  int fact = 1;
  for (int i = 1; i <= number20; i++) {
    fact = fact * i;
  }
  print('5-ийн факториал: $fact');
}