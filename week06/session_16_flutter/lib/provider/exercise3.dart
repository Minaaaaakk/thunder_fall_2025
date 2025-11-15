import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) {
                return Text(
                  'Тоолуур: ${counterProvider.counter}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(
                      context,
                      listen: false,
                    ).increment();
                  },
                  child: Text('Нэмэх'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(
                      context,
                      listen: false,
                    ).decrement();
                  },
                  child: Text('Хасах'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
