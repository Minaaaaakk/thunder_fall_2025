import 'dart:io';
void main() {
  String myName;
  myName = "Minjin";
  print(myName);
  print("-" * 20);

  int birthYear = 2004;
  int currentYear = 2025;
  int age = currentYear - birthYear;
  print("You are approximately $age years old.");
  print("-" * 20);

  String favoriteColor = "violet";
  if (favoriteColor == "violet") {
    print("Бидний дуртай өнгө ижил юм байна!");
  }
  print("-" * 20);

  int myAge = 21;
  if (myAge >= 18) {
    print("Та насанд хүрсэн байна.");
  } else {
    print("Та насанд хүрээгүй байна.");
  }
  print("-" * 20);

  double temperature = 25.5;
  if (temperature >= 20) {
    print("Гадаа дулаахан байна.");
  }
  print("-" * 20);


  int score = 85;
  if (score >= 90) {
    print("Онц");
  } else if (score >= 80) {
    print("Сайн");
  } else if (score >= 70) {
    print("Дунд");
  } else {
    print("Муу");
  }
  print("-" * 20);

  bool isLoggedIn = true;
  bool isAdmin = false;
  if (isLoggedIn == true) {
    if (isAdmin == true) {
      print("Админ хуудас руу тавтай морил");
    }
  }
  print("-" * 20);


  String dayOfWeek = "Sunday";
  if (dayOfWeek == "Sunday" || dayOfWeek == "Saturday") {
    print("Happy weekend!");
  }
  print("-" * 20);

  String? password = stdin.readLineSync();
  if (password == null || password.isEmpty || password.length < 8) {
    print('Нууц үг шаардлага хангахгүй.');
  } 
  print("-" * 20);

  List<String> fruits = ["apple", "banana", "orange"];
  if (fruits.contains("apple")) {
    print("Found apple!");
  }
  print("-" * 20);

  Map<String, dynamic> user = {'name': 'Dorj', 'age': 25, 'isVerified': true};
  if (user['isVerified'] == true) {
    print("Баталгаат хэрэглэгч");
  }
  print("-" * 20);

  bool isNight = true;
  String greeting = isNight ? 'Сайхан амраарай' : 'Өдрийн мэнд';
  print(greeting);
  print("-" * 20);

  String trafficLight = "red";
   switch (trafficLight) {
    case "red":
      print('Stop!');
      break;
    case "yellow":
      print('Ready!');
      break;
    case "green":
      print('Go!');
      break;
    default:
      print('Not sure');
   }
   print("-" * 20);


  List<Map<String, dynamic>> users = [
    {'name': 'Dorj', 'age': 25},
    {'name': 'Bat', 'age': 35}, 
    {'name': 'Byamba', 'age': 40},
    ];
  for (var user in users) {
    if (user['age'] > 30) {
      print(user['name']);
  }
  }
  print("-" * 20);

  double cartTotal = 60000;
  bool hasCoupon = true;
  double discount = 0;
  if (cartTotal > 50000 && hasCoupon == true) {
    discount = cartTotal * 0.10; 
  } else if (cartTotal > 50000) {
    discount = cartTotal * 0.05; 
  } else {
    discount = 0; 
  }

  print("Хямдрал: ${discount} MNT");
  print("Төлөх дүн: ${cartTotal - discount}MNT");
}