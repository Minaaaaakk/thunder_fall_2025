import 'dart:math';
//dasgal1
class Person {
  late String name;
  late int age;
}

//dasgal2
class Book {
  final String title;
  final String author;
  Book(this.title, this.author);
}

//dasgal3
class Dog {
  final String name;
  Dog(this.name);
  void bark() {
    print('Woof! My name is $name');
  }
}

//dasgal4
class Circle {
  final double radius;
  Circle(this.radius);
  double calculateArea() {
    return pi * (radius * radius);
  }
}

//dasgal5
//class Animal {
//  final String name;
//  Animal(this.name);
//  void eat() {
//    print('$name идэж байна.');
//  }
//}
//class Cat extends Animal {
//  Cat(String name) : super(name);
//}

//dasgal6
class Animal {
  final String name;
  Animal(this.name);
  void makeSound() {
    print('Амьтны ерөнхий дуу...');
  }
}
class Cat extends Animal {
  Cat(String name) : super(name);
  @override
  void makeSound() {
    print('Мяу!');
  }
}

//dasgal7
class Song {
  final String title;
  final String artist;
  Song(this.title, this.artist);
  @override
  String toString() {
    return "'$title' by $artist";
  }
}

//dasgal8
class Shape {
  final String color;
  Shape(this.color);
}
class Square extends Shape {
  final double sideLength;
  Square({required String color, required this.sideLength}) : super(color);
}

//dasgal9
extension IntegerExtensions on int {
  bool get isEven {
    return this % 2 == 0;
  }
}

//dasgal10
extension SpeedFormatting on int {
  String toKmh() {
    return '$this km/h';
  }
}
class Vehicle {
  int speed = 0;
  void accelerate() {
     speed += 10;
     print('Хурдалж байна...');
  }
}
class Car extends Vehicle {}
class Bicycle extends Vehicle {
  @override
  void accelerate() {
    speed += 5;
    print('Илүү удаан хурдалж байна...');
  }
}

void main() {
//Dasgal1
//  final person1 = Person();
//  person1.name = 'Сараа';
//  person1.age = 25;
//  print('Объект үүслээ. Нэр: ${person1.name}');
//  print('Нас: ${person1.age}');
//Dasgal2
//  final myBook = Book('1984', 'George Orwell');
//  print('Номын нэр: ${myBook.title}, Зохиогч: ${myBook.author}');
//Dasgal3
//  final myDog = Dog('Банхар');
//  myDog.bark();
//Dasgal4
//  final myCircle = Circle(10.0);
//  double area = myCircle.calculateArea();
//  print('10.0 радиустай тойргийн талбай: $area');
//Dasgal5,6
//  final myCat = Cat('Мий');
//  myCat.eat();
//  myCat.makeSound();
//Dasgal7
//  final mySong = Song('Bohemian Rhapsody', 'Queen');
//  print(mySong);
//Dasgal8
//  final mySquare = Square(color: 'Улаан', sideLength: 10.0);
//  print('Дөрвөлжингийн өнгө: ${mySquare.color}');
//  print('Талын урт: ${mySquare.sideLength}');
//Dasgal9
//  int num1 = 10;
//  int num2 = 7;
//  print('$num1 тэгш тоо мөн үү? ${num1.isEven}');
//  print('$num2 тэгш тоо мөн үү? ${num2.isEven}');
//Dasgal10
  final myCar = Car();
  myCar.accelerate();
  print('Машины хурд: ${myCar.speed.toKmh()}');
  print('---');
  final myBike = Bicycle();
  myBike.accelerate();
  print('Дугуйны хурд: ${myBike.speed.toKmh()}');
}