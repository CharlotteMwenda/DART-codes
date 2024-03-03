void main() {
  // Example of int data type
  int myInteger = 54;
  print("Integer Example: $myInteger");

  // Example of double data type
  double myDouble = 5.1478;
  print("Double Example: $myDouble");

  // Example of String data type
  String myString = "Hello,My name is Charlotte Mwenda am 24 years old and I live in Thika.";
  print("String Example: $myString");

  // Example of List data type
  List<int> myList = [8, 9, 10, 11, 12];
  print("List Example: $myList");

  // Example of Map data type
  Map<String, dynamic> myMap = {
    'name': 'Amittai',
    'age': 25,
    'isStudent': true,
  };
  print("Map Example: $myMap");

  // Testing accuracy and performance
  int sum = 0;
  for (int number in myList) {
    sum += number;
  }
  print("Sum of elements in the list: $sum");

  // Testing map update
  myMap['isStudent'] = false;
  print("Updated Map: $myMap");
}
