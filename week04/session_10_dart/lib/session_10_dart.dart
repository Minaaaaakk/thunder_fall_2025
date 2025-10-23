//Dasgal6
void displayMessage(String message) {
  print('Зурвас: $message');
}

//Dasgal7
int square(int number) {
  return number * number;
}

//Dasgal11
class Greeter {
  void sayGoodbye() {
    print('GoodBye!');
  }
}

//Dasgal12
class Smartphone {
  String brand;
  double price;
  Smartphone(this.brand, this.price);
}

//Dasgal13
void describePet({required String name, String animalType = 'нохой'}) {
  print('Миний тэжээвэр амьтан бол $name нэртэй $animalType юм.');
}

//Dasgal16
List<String> filterShortWords(List<String> words, int maxLength) {
  return words.where((word) => word.length <= maxLength).toList();
}

//Dasgal17
class Student {
  String name;
  List<int> scores;
  Student(this.name, this.scores);
  double getAverageScore() {
    int sum = scores.reduce((value, element) => value + element);
    return sum / scores.length; 
  }
}

//Dasgal18
enum UserRole { admin, editor, guest }
String getPermissions(UserRole role) {
  switch (role) {
    case UserRole.admin:
      return 'Бүх эрхтэй.';
    case UserRole.editor:
      return 'Засварлах эрхтэй.';
    case UserRole.guest:
      return 'Зөвхөн унших эрхтэй.';
  }
}

//Dasgal19
class Engine {
  int horsepower;
  Engine(this.horsepower);
}
class Car {
  String brand;
  Engine engine;
  Car(this.brand, this.engine);
}

void main() {
//Dasgal1
  String movieTitle = 'Inception';
  print(movieTitle);
  print("-" * 20);

//Dasgal2
  int a = 15;
  int b = 4;
  int sum = a + b;
  int diff = a - b;
  int mult = a * b;
  print('Total: $sum');
  print('Difference: $diff');
  print('Multiplied: $mult');
  print("-" * 20);

//Dasgal3
  String name = 'Sarah';
  int age = 28;
  print('My name is $name. I am $age years old.');
  print("-" * 20);

//Dasgal4
  double accountBalance = 5000.0;
  if (accountBalance > 0) {
    print('There is money in your account.');
  }
  print("-" * 20);

//Dasgal5
  int temperature = 15;
  if (temperature >= 18) {
    print("It's warm outside.");
  } else {
    print("It's chilly outside.");
  }
  print("-" * 20);

//Dasgal6
  displayMessage('Энэ бол миний анхны функц!');
  print("-" * 20);

//Dasgal7
  print('5-ын квадрат: ${square(5)}');
  print("-" * 20);

//Dasgal8
  List<String> colors = ['red', 'green', 'blue'];
  for (String color in colors) {
    print(color);
  }
  print("-" * 20);

//Dasgal9
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  for (int num in numbers) {
    if (num % 2 != 0) {
      print(num);
    }
  }
  print("-" * 20);

//Dasgal10
  Map<String, dynamic> person = {'name': 'Тулга', 'age': 30};
  print(person['name']);
  print("-" * 20);

//Dasgal11
  final greeter = Greeter();
  greeter.sayGoodbye();
  print("-" * 20);

//Dasgal12
  final myPhone = Smartphone('Samsung', 2500000.0);
  print('Утасны брэнд: ${myPhone.brand}');
  print("-" * 20);

//Dasgal13
  describePet(name: 'Банхар');
  describePet(name: 'Мий', animalType: 'муур');
  print("-" * 20);

//Dasgal14
  bool isLoggedIn = false;
  String statusMessage = isLoggedIn? 'Welcome' : 'Login';
  print(statusMessage);
  print("-" * 20);

//Dasgal15
  List<Map<String, dynamic>> books = [{'title': '1984', 'pages': 500}, {'title': 'The Hobbit', 'pages': 450}, {'title': 'Life', 'pages': 150}];
  for (var book in books) {
    if (book['pages'] > 200) {
      print(book['title']);
    }
  }
  print("-" * 20);

//Dasgal16
  List<String> vocabulary = ['програмчлал', 'тест', 'алдаа', 'функц'];
  List<String> result = filterShortWords(vocabulary, 5);
  print(result);
  print("-" * 20);

//Dasgal17
  final student1 = Student('Төмөр', [85, 90, 92]);
  print('${student1.name}-ийн дундаж дүн: ${student1.getAverageScore()}');
  print("-" * 20);

//Dasgal18
  print('Админ: ${getPermissions(UserRole.admin)}');
  print('Зочин: ${getPermissions(UserRole.guest)}');
  print("-" * 20);

//Dasgal19
  final myEngine = Engine(450);
  final myCar = Car('Ford Mustang', myEngine);
  print('${myCar.brand} нь ${myCar.engine.horsepower} морины хүчтэй.');
  print("-" * 20);

//Dasgal20
  int driver_age = 18;
  bool hasLicence = true;
  bool isSober = true;
  if (driver_age >= 18 && hasLicence && isSober) {
    print('Жолоо барьж болно.');
  } else {
    print('Жолоо барьж болохгүй.');
  }
}


