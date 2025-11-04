//Dasgal1
class AppSettings {
  static const String appName = "Миний Апп";
}

//Dasgal2
class StringUtils {
  static String reverse(String text) {
    return text.split('').reversed.join();
  }
}

//Dasgal3
class Counter {
  static int _count = 0;

  static void increment() {
    _count++;
  }

  static int getCount() {
    return _count;
  }
}

//Dasgal4
class Validator {
  static bool isEmailValid(String email) {
    return email.contains('@');
  }
}

//Dasgal5
class Widget {
  static int instanceCount = 0;

  Widget() {
    instanceCount++;
    print("Одоо нийт $instanceCount виджет үүслээ.");
  }
}

void main() {
  print(AppSettings.appName);
  print("-" * 20);
  print(StringUtils.reverse("hello"));
  print("-" * 20);
  Counter.increment();
  Counter.increment();
  print(Counter.getCount());
  print("-" * 20);
  print(Validator.isEmailValid("test@example.com"));
  print(Validator.isEmailValid("testexample.com"));
  print("-" * 20);
  final w1 = Widget();
  final w2 = Widget();
  final w3 = Widget();
}