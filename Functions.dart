// Task 1: Add two numbers
int addTwo(int a, int b) {
  return a + b;
}

// Task 2: Subtract two numbers
int subtractTwo(int a, int b) {
  return a - b;
}

// Task 3: Multiply two numbers
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4: Divide two numbers
double divideTwo(double a, double b) {
  // Checking for division by zero to avoid runtime error
  if (b != 0) {
    return a / b;
  } else {
    print("Error: Cannot divide by zero!");
    return double.infinity; // Return positive infinity as an indicator of error
  }
}

// Task 5: String length
int stringLength(String inputString) {
  return inputString.length;
}

// Task 6: Get the first element of a list
dynamic getFirstElement(List<dynamic> inputList) {
  if (inputList.isNotEmpty) {
    return inputList[0];
  } else {
    print("Error: The list is empty!");
    return null; // Return null as an indicator of error
  }
}

void main() {
  // Testing the functions
  print("Task 1 - Add Two: ${addTwo(10, 15)}");
  print("Task 2 - Subtract Two: ${subtractTwo(14, 8)}");
  print("Task 3 - Multiply Two: ${multiplyTwo(9, 7)}");
  print("Task 4 - Divide Two: ${divideTwo(16, 2)}");
  print("Task 5 - String Length: ${stringLength("Dart is an interesting programming language")}");
  print("Task 6 - Get First Element: ${getFirstElement([10, 20, 30])}");
}