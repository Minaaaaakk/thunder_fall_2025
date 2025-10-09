void main() {
  double score;
  String message;

  score = 3.14;
  message = 'Hello, Dart!';

  print(score);
  print(message);

  bool isStudent = true;

  print(isStudent);

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  List<int> numbers = [1, 2, 3, 4, 5];
  List<double> numbers1 = [3.14, 4.5, 6.7];

  print(fruits);
  print(numbers);
  print(numbers1);

  Map<String, int> studentScores = {
    'Minjin': 90,
    'Mike': 50,
  };

  print(studentScores);

  dynamic anything = "Hello";
  print(anything);
  anything = 123;

  print(anything);

  int a = 10;
  int b = 3;

  print('${a+b}');
  print('${a-b}');
  print('${a*b}');
  print('${a/b}');
  print('${a~/b}');
  print('${a%b}');

  String name = "Сараа";
  int points = 85;

  String reportNew = "Оюутан $name $points оноо авлаа.";
  print(reportNew);
  print("Түүний оноо 10 жилийн дараа: ${points + 10}");
}