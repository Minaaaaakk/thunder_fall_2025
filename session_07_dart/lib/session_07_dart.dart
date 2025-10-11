//dasgal1
void sayHello() {
  print('Hello, Dart!');
}
//void main() {
//  sayHello();
//}

//dasgal2
void greetUser(String name) {
  print('Hello, $name!');
}
//void main () {
//  greetUser("Bold");
//  greetUser("Sarah");
//}

//dasgal3
int addNumbers(int a, int b) {
  int sum = a + b;
  return sum;
}
//void main() {
//  int result = addNumbers(10, 15);
//  print('Total: $result');
//}

//dasgal4
String createFullName(String firstName, String lastName) {
  return '$lastName-ийн $firstName';
}
//void main() {
//  String fullName = createFullName("Болд", "Дорж");
//  print(fullName);
//}

//dasgal5
bool isEven(int a) {
  if (a % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
//void main() {
//  print('10 тэгш тоо мөн үү?: ${isEven(10)}');
//  print('7 тэгш тоо мөн үү?: ${isEven(7)}');
//}

//dasgal6
double calculateArea(double width, double height) {
  return width * height;
}
//void main() {
//  double area = calculateArea(5.5, 10);
//  print('Area of the rectangle: $area');
//}

//dasgal7
void printWelcomeMessage(String firstName, String lastName) {
  String fullName = createFullName(firstName, lastName);
  print('Welcome, $fullName!');
}
//void main() {
//  printWelcomeMessage("Сараа", "Бат");
//}

//dasgal8
double celsiusToFahrenheit(double celsius) {
  return celsius * 1.8 + 32;
}
//void main() {
//  double F = celsiusToFahrenheit(25);
//  print('25°C is $F°F');
//}

//dasgal9
int findMax(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
//void main() {
//  int max = findMax(100, 50);
//  print('Maximum number: $max');
//}

//dasgal10
int getStringLength(String word) {
  return word.length;
}
//void main() {
//  int letters = getStringLength('Flutter');
//  print("'Flutter' has $letters letters.");
//}

//dasgal11
int addNumbersShort(int a, int b) => a + b;
//void main() {
//  int result = addNumbers(10, 15);
//  print('Total: $result');
//}

//dasgal12
//void printUserInfo(String name, int age) {
//  print('Хэрэглэгч: $name, Нас: $age');
//}
//void main() {
//  printUserInfo('Тулга', 30);
//  printUserInfo('Нараа', 25);
//}

//dasgal13
void printUserInfo({required String name, int? age}) {
  print('Хэрэглэгч: $name, Нас: тодорхойгүй');
}

//void main() {
//  printUserInfo(name: 'Тулга');
//}

//dasgal14
void sendMessage({required String message, String recipient = 'Admin'}) {
  print('$message гэсэн зурвасыг $recipient руу илгээлээ.');
}
//void main() {
//  sendMessage(message: 'Hello');
//  sendMessage(message: "Help", recipient: "Дорж");
//}

//dasgal15
List<int> getEvennumbers(int limit) {
  List<int> evenNumbers = [];
  for (int i = 0; i <= limit; i++) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    }
  }
  return evenNumbers;
}
//void main() {
//  List<int> evenNums = getEvennumbers(10);
//  print(evenNums);
//}

//dasgal16
Map<String, dynamic> createUserProfile(String name, int age) {
  return {'name' : name, 'age': age, 'isVerified': false};
}
//void main() {
//  Map<String, dynamic> userProfile = createUserProfile('Ганаа', 28);
//  print(userProfile);
//}

//dasgal17
int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;
void operate(int x, int y, Function(int, int) operation) {
  int answer = operation(x, y);
  print('Result: $answer');
}
//void main() {
//  operate(10, 5, add);
//  operate(10, 5, subtract);
//}

//dasgal18
String globalVar = 'Би бол глобал';
void variable_tester() {
  String localVar = 'Би бол локал';
  print(localVar);
  print(globalVar);
}
//void main() {
//  variable_tester();
//  print(globalVar);
//}

//dasgal19
void upperCase() {
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.forEach((fruit) {
    print(fruit.toUpperCase());
  });
}
//void main() {
//  upperCase();
//}

//dasgal20
String describeProduct({required String name, required double price, category = 'General'}) {
  return 'Product: $name, Price: $price₮, Category: $category';
}
//void main() {
//  String firstProduct = describeProduct(name: 'Milk', price: 3500.0);
//  String secondProduct = describeProduct(name: 'Laptop', price: 2500000.0, category: 'Technology');
//  print(firstProduct);
//  print(secondProduct);
//}

//Dasgal1
class Car {
  String? brand;
  String? model;
  int? year;
}
//void main() {
//  print('Car класс амжилттай үүслээ.');
//}

//Dasgal2
class Book {
  final String title;
  final String author;
  Book(this.title, this.author);
}
//void main() {
//  final myBook = Book('1984', 'George Orwell');
//  print('Номын нэр: ${myBook.title}');
//}

//Dasgal3
class Dog {
  String name;
  Dog(this.name);
  void bark() {
    print("Woof! My name is $name");
  }
}
//void main() {
//  final myDog = Dog('Банхар');
//  myDog.bark();
//}

//Dasgal4
class User {
  String username;
  String email;
  User(this.username, this.email);
}
//void main() {
//  final user1 = User('boldoo', 'bold@email.com');
//  final user2 = User('saraa', 'saraa@email.com');
//  print('Хэрэглэгч 1: ${user1.username}, ${user1.email}');
//  print('Хэрэглэгч 2: ${user2.username}, ${user2.email}');
//}