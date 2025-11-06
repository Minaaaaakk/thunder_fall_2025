//Dasgal7
void divide(int a, int b) {
  try {
    int result = a ~/ b;  
    print(result);
  } catch (e) {
    print("Тэгт хувааж болохгүй!");
  } finally {
    print('Тооцоолол дууслаа.');
  }
}

//Dasgal10
void checkAge(int age) {
  if (age < 18) {
    throw Exception('Насанд хүрээгүй байна!');
  } else {
    print("Орж болно.");
  }
}

void main() {
//Dasgal6
  String text = "123a";

  try {
    int number = int.parse(text);
    print(number);
  } catch (e) {
    print("Хөрвүүлэлт амжилтгүй боллоо.");
  }
  print("-" * 20);
//Dasgal7
  divide(10, 2);
  divide(10, 0);
  print("-" * 20);
//Dasgal8
  List<int> numbers = [10, 20, 30];

  try {
    print(numbers[5]);  // 5-р индекс байхгүй
  } catch (e) {
    print("Тийм индекс байхгүй байна.");
  }
  print("-" * 20);
//Dasgal9
  divide(10, 2);
  print('---');
  divide(10, 0);
  print("-" * 20);
//Dasgal10
  try {
    checkAge(20);
    checkAge(15);
  } catch (e) {
    print("Алдаа: $e");
  }
}

