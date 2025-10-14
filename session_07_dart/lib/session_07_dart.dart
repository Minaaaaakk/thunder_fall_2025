import 'dart:math';
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

//Dasgal5
class Circle {
  double radius;
  Circle(this.radius);
  double calculateArea() {
    return pi * (radius * radius);
  }
}
//void main() {
//  final myCircle = Circle(10.0);
//  double area = myCircle.calculateArea();
//  print('Тойргийн талбай: $area');
//}

//Dasgal6
class Student {
  String name;
  int grade;
  Student({required this.name, required this.grade});
}
//void main() {
//  final student1 = Student(grade: 5, name: 'Тулга');
//  print('${student1.name} ${student1.grade}-р ангид сурдаг.');
//}

//Dasgal7
class Rectangle {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
}

//Dasgal8
class Song {
  String title;
  String artist;
  Song(this.title, this.artist);

  @override
  String toString() {
    return "'$title' by $artist";
  }
}

//Dasgal9
class Temperature {
  double celsius;
  Temperature(this.celsius);

  double toFahrenheit() {
    return celsius * 1.8 + 32;
  }
}

//Dasgal10
class Point {
  int x;
  int y;
  Point(this.x, this.y);
}

//Dasgal11
class BankAccount {
  double balance = 0;
  void deposit(double amount) {
    balance += amount;
    print('$amount₮ нэмэгдлээ. Одоогийн үлдэгдэл: $balance₮');
  }
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('$amount₮ гаргалаа. Одоогийн үлдэгдэл: $balance₮');
    } else {
      print('Дансны үлдэгдэл хүрэлцэхгүй байна.');
    }
  }
}

//Dasgal12
class Product {
  String name;
  double price;
  String category;
  Product({required this.name, required this.price, this.category = "Ерөнхий"});
}

//Dasgal13, 14
class Playlist {
  String name;
  List<Song> songs = [];
  Playlist(this.name);
  void addSong(Song song) {
    songs.add(song);
  }
}

//Dasgal15
class Player {
  String name; 
  int number;
  Player(this.name, this.number);
}
class Team {
  String teamName;
  List<Player> players = [];
  Team(this.teamName);
  void addPlayer(Player player) {
    players.add(player);
  }
  int getTotalPlayers() {
    return players.length;
  }
}

//Dasgal16
class Triangle {
  int a;
  int b;
  int c;
  Triangle(this.a, this.b, this.c);
  bool isTriangleValid() {
    return (a + b > c) && (a + c > b) && (b + c > a);
  }
}

//Dasgal17
class Stopwatch {
  DateTime? _startTime;
  Duration _elapsed = Duration.zero;
  bool _isRunning = false;

  void start() {
    if (!_isRunning) {
      _startTime = DateTime.now();
      _isRunning = true;
    }
  }
  void stop() {
    if (_isRunning) {
      _elapsed += DateTime.now().difference(_startTime!);
      _isRunning = false;
    }
  }
  void reset() {
    _elapsed = Duration.zero;
    _isRunning = false;
  }
  Duration get elapsedTime {
    if (_isRunning) {
      return _elapsed += DateTime.now().difference(_startTime!);
    }
    return _elapsed;
  }
}

//Dasgal18
class QuizQuestion {
  String questionText;
  List<String> options;
  int correctAnswerIndex;
  QuizQuestion(this.questionText, this.options, this.correctAnswerIndex);

  bool checkAnswer(int selectedIndex) {
    return correctAnswerIndex == selectedIndex;
  }
}

//Dasgal19
class Inventory {
  List<Product> products = [];
  void addProduct(Product p) {
    products.add(p);
  }
  void removeProduct(String name) {
    products.removeWhere((p) => p.name == name);
  }
  Product? findProductByName(String name) {
    bool hasEven = products.any((p) => p.name == name);
    print(hasEven);
  }
}

//Dasgal20
class RPGCharacter {
  String name;
  int health = 100;
  int attackPower;
  RPGCharacter(this.name, this.attackPower);
  void attack(RPGCharacter target) {
    print('$name, ${target.name} руу довтоллоо!');
    target.takeDamage(attackPower);
  }
  void takeDamage(int damage) {
    health -= damage;
    print('$name $damage хохирол амслаа. Одоо $health амьтай.');
  }
}


void main() {
//Dasgal7
//  final rect = Rectangle(10, 20);
//  print('Width of the rectangle: ${rect.width}');
//Dasgal8
//  final mySong = Song('Bohemian Rhapsody', 'Queen');
//  print(mySong);
//Dasgal9
//  final temp = Temperature(30);
//  print('30°C нь ${temp.toFahrenheit()}°F');
//Dasgal10
//  final p1 = Point(10, 20);
//  print('Цэгийн координат: (x: ${p1.x}, y: ${p1.y})');
//Dasgal11
//  final myAccount = BankAccount();
//  myAccount.deposit(1000);
//  myAccount.withdraw(300);
//  myAccount.withdraw(800);
//Dasgal12
//  final product1 = Product(name: 'Сүү', price: 3500);
//  final product2 = Product(name: 'Гар утас', price: 1500000, category: 'Технологи');
//  print('${product1.name} - ${product1.category}');
//  print('${product2.name} - ${product2.category}');
//Dasgal13
//  final myPlaylist = Playlist('Миний дуртай дуунууд');
//  print('${myPlaylist.name} плейлистэд одоогоор ${myPlaylist.songs.length} дуу байна.');
//Dasgal14
//  final myPlaylist = Playlist('Миний дуртай дуунууд');
//  myPlaylist.addSong(Song('Stairway to Heaven', 'Led Zeppelin'));
//  myPlaylist.addSong(Song('Yesterday', 'The Beatles'));
//  print(myPlaylist.songs);
//Dasgal15
//  final dreamTeam = Team('Мөрөөдлийн баг');
//  dreamTeam.addPlayer(Player('Майкл Жордан', 23));
//  dreamTeam.addPlayer(Player('Леброн Жеймс', 6));
//  print('${dreamTeam.teamName} ${dreamTeam.getTotalPlayers()} тоглогчтой.');
//Dasgal16
//  final validTriangle = Triangle(3, 4, 5);
//  final invalidTriangle = Triangle(1, 2, 5);
//  print('3, 4, 5-тай гурвалжин зөв үү? ${validTriangle.isTriangleValid()}');
//  print('1, 2, 5-тай гурвалжин зөв үү? ${invalidTriangle.isTriangleValid()}');
//Dasgal17
//  final stopwatch = Stopwatch();
//  print('Секундомер үүслээ.');
//Dasgal18
//  final q1 = QuizQuestion('Dart-г хэн бүтээсэн бэ?', ['Apple', 'Google', 'Microsoft'], 1);
//  print('2 дахь хариулт зөв үү? ${q1.checkAnswer(1)}');
//Dasgal19
//  final inventory = Inventory();
//  print('Барааны бүртгэл үүслээ.');
//Dasgal20
//  final hero = RPGCharacter('Баатар', 20);
//  final monster = RPGCharacter('Мангас', 15);
//  hero.attack(monster);
//  monster.attack(hero);
}