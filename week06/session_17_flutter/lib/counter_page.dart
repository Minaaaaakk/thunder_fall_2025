import 'package:flutter/material.dart';
import 'counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<CounterProvider>(
          builder: (context, provider, child) {
            return Text('Тоолуур ${provider.count}');
          },
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, provider, child) {
                return Text(
                  '${provider.count}',
                  style: TextStyle(
                    fontSize: 100,
                    color: provider.count < 0 ? Colors.red : Colors.black,
                  ),
                );
              },
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false).add();
                  },
                  child: Icon(Icons.add, size: 30),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(
                      context,
                      listen: false,
                    ).minus();
                  },
                  child: Icon(Icons.remove, size: 30),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(
                      context,
                      listen: false,
                    ).incrementBy2();
                  },
                  child: Text('+2', style: TextStyle(fontSize: 30)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(
                      context,
                      listen: false,
                    ).reset();
                  },
                  child: Text('Reset', style: TextStyle(fontSize: 30)),
                ),
                SizedBox(height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<CounterProvider>(
                  builder: (context, provider, child) {
                    return Text(
                      provider.count >= 0 ? 'Эерэг' : 'Сөрөг',
                      style: TextStyle(
                        fontSize: 30,
                        color: provider.count >= 0 ? Colors.green : Colors.red,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
