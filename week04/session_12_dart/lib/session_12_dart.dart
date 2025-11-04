import 'dart:math';
//Dasgal1
//void main() {
//  print('Програм эхэллээ...');
//  print('Энэ текст түрүүлж хэвлэгдэнэ.');
//  Future.delayed(Duration(seconds: 2)).then((value) {
//    print('Хүлээлт дууслаа!');
//  });
//}

//Dasgal3
Future<String> fetchUsername() async {
  await Future.delayed(Duration(seconds: 3));
  return 'Дорж';
}

//Dasgal4
Future<String> fetchUserID() async {
  await Future.delayed(Duration(seconds: 1));
  return '123';
}
Future<String> fetchUserEmail(String userID) async {
  await Future.delayed(Duration(seconds: 2));
  return '$userID@email.com';
}

//Dasgal5
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  if (Random().nextBool()) {
    return "Өгөгдөл ирлээ!";
  } else {
    throw Exception("Сүлжээний алдаа!");
  }
}

Future<void> main() async {
//Dasgal2
//  print('Програм эхэллээ...');
//  await Future.delayed(Duration(seconds: 2));
// print('Хүлээлт дууслаа!');
//  print('Энэ текст сүүлд хэвлэгдэнэ.');

//Dasgal3
//  print('Хэрэглэгчийн нэрийг татаж байна...');
//  String username = await fetchUsername();
//  print('Хэрэглэгчийн нэр: $username');

//Dasgal4
//  print('Хэрэглэгчийн ID-г авч байна...');
//  String id = await fetchUserID();
//  print("Хэрэглэгчийн имэйлийг авч байна...");
//  String email = await fetchUserEmail(id);
//  print("Хэрэглэгчийн имэйл: $email");

//Dasgal5
//  print("Өгөгдөл татаж байна...");
//  try {
//    String result = await fetchData();
//    print("Амжилттай: $result");
//  } catch (e) {
//    print("Алдаа гарлаа: $e");
//  }
}