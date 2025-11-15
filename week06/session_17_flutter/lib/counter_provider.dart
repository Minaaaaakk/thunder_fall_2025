import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void add() {
    _count++;
    notifyListeners();
  }
  void minus() {
    _count--;
    notifyListeners();
  }
  void reset() {
    _count = 0;
    notifyListeners();
  }
  void incrementBy2() {
    _count +=2;
    notifyListeners();
  }
}
