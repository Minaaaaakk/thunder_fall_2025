
void main() {
  //dasgal 1
  List<String> colors = ['Red', 'Green', 'Blue', 'Yellow'];
  print(colors.length);
  print("-" * 20);
  // dasgal 2
  List<int> numbers = [10, 20, 30, 40, 50];
  print(numbers.first);
  print(numbers.last);
  print("-" * 20);
  //dasgal 3
  List<String> shoppingList = ['Bread', 'Milk'];
  shoppingList.add('Eggs');
  print(shoppingList);
  print("-" * 20);
  //dasgal 4
  List<String> techItems = ['Компьютер', 'Гар', 'Хулгана', 'Чихэвч'];
  techItems.remove('Хулгана');
  print(techItems);
  print("-" * 20);
  //dasgal 5
  List<String> emptyList = [];
  if (emptyList.isEmpty) {
    print("List is empty");
  }else {
    print("List is not empty");
  }
  print("-" * 20);
  //dasgal 6
  List<String> weekdays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'];
  for (var day in weekdays) {
    print('Today is $day');
  }
  print("-" * 20);
  //dasgal 7
  List<int> unsortedNumbers = [5, 1, 9, 3, 7, 2];
  unsortedNumbers.sort();
  print(unsortedNumbers);
  print("-" * 20);
  //dasgal 8
  List<int> numbers8 = [1, 2, 3, 4, 5];
  var doubledNumbers = numbers8.map((number) => number * number).toList();
  print(doubledNumbers);
  print("-" * 20);
  //dasgal 9
  List<int> allNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var evenNumbers = allNumbers.where((n) => n % 2 == 0).toList();
  print(evenNumbers);
  print("-" * 20);
  //dasgal10
  List<String> fruits = ['Apple', 'Banana', 'Kiwi', 'Orange', 'Apricot'];
  fruits.removeWhere((fruit) => fruit.startsWith('A'));
  print(fruits);
  print("-" * 20);
  //dasgal 11
  List<int> prices = [10, 20, 30, 40];
  var totalPrice = prices.reduce((value, element) => value + element);
  print(totalPrice);        
  print("-" * 20);
  //dasgal 12
  List<int> scores = [15, 25, 30, 45];
  bool tenPlusScores = scores.every((n) => n > 10);
  print(tenPlusScores);   
  print("-" * 20);
  //dasgal 13
  List<int> data = [11, 23, 8, 42, 35, 16];
  int divisibleBySeven = data.firstWhere((n) => n % 7 == 0, orElse: () => 0);
  if (divisibleBySeven != 0) {
    print(divisibleBySeven);
  }else {
    print('Not found');
  }
  print("-" * 20);
  //dasgal 14
  List<int> baseNumbers = [1, 2, 3];
  var negativeNumbers = baseNumbers.expand((n) => [n, -n]).toList();
  print(negativeNumbers);
  print("-" * 20);
  //dasgal 15
  List<int> mixedNumbers = [1, 15, 7, 22, 9, 30, 12];
  var biggerThanTen = mixedNumbers.where((n) => n > 10).map((n) => "Number: $n").toList();
  print(biggerThanTen);
  
}
