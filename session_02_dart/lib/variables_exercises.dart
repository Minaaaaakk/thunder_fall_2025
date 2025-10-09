void main() {
  // beginner
  int myAge;
  myAge = 21;
  print(myAge);

  String firstName;
  String lastName;
  firstName = "Minjin";
  lastName = "Ganzorig";
  String fullName = "$lastName $firstName";
  print(fullName);

  double piValue;
  piValue = 3.14159;
  print(piValue);

  bool isRaining = false;
  print("Is it raining now? $isRaining");

  int a = 15;
  int b = 7;
  print('${a-b}');

  // intermediate
  final int birthYear = 2004;
  print(birthYear);
   // ymar aldaa garch buig harsan
  
  const int minutesInHour = 60;
  print(minutesInHour);

  var myPet = "cat";
  print(myPet);
  // aldaa garch buig shalgasan

  String bookTitle = "Becoming";
  String author = "Michelle Obama";
  int pageCount = 500;
  String book = "Minii unshij bui $bookTitle nomiig $author bichsen bogood niit $pageCount huudastai.";
  print(book);

  String priceString = "120.5";
  print(double.parse(priceString));

  //advanced
  String middleName = "M";
  print(middleName); // null utga gargaj uzsen

  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  print("Jagsaaltiin urt: ${fruits.length}");
  print("Second element: ${fruits[01]}"); //apple bl fruits[0]

  Map<String, String> student = {
    'name': 'Bold',
    'major': 'Program hangamj',
  };
    print("Program hangamj");

    List<Map<String, String>> students = [
      {
        'name': 'Bold',
        'major': 'Program hangamj',
      },
      {
        'name': 'Minjin',
        'major': 'Data science',
      }
    ];
    print(students[01]['name']);

   Map<String, dynamic> car = {
    'brand': 'Mercedes',
    'year': 2015,
    'isElectric': false,
    'features': ["AC", "camera", "bluetooth"]
   };
   print(car['year']);
   print(car['features'][0]);








  
  






 

}