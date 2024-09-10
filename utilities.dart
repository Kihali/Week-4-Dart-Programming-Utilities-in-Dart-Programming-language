import 'dart:io';

// String Manipulation
String manipulateString(String input) {
  // String concatenation
  String concatenated = input + ' is amazing!';
  
  // String interpolation
  String interpolated = 'Your input: $input';
  
  // Substring extraction
  String substring = input.substring(0, 5);
  
  // Case conversion
  String upperCase = input.toUpperCase();
  String lowerCase = input.toLowerCase();
  
  // Reverse string
  String reversed = input.split('').reversed.join('');
  
  // Length of the string
  int length = input.length;
  
  return '''
  Concatenated: $concatenated
  Interpolated: $interpolated
  Substring: $substring
  Upper Case: $upperCase
  Lower Case: $lowerCase
  Reversed: $reversed
  Length: $length
  ''';
}

// Collections
void demonstrateCollections() {
  // List
  List<String> list = ['apple', 'banana', 'cherry'];
  list.add('date');
  list.remove('banana');
  print('List: $list');

  // Set
  Set<String> set = {'apple', 'banana', 'cherry'};
  set.add('date');
  set.remove('banana');
  print('Set: $set');

  // Map
  Map<String, int> map = {'apple': 1, 'banana': 2};
  map['cherry'] = 3;
  map.remove('banana');
  print('Map: $map');
}

// File Handling
void fileHandling() {
  try {
    // Read content from a file
    File inputFile = File('input.txt');
    String content = inputFile.readAsStringSync();
    print('Content from file: $content');

    // Write new data to another file
    File outputFile = File('output.txt');
    outputFile.writeAsStringSync('Processed Data: $content\nDateTime: ${DateTime.now()}');
    print('Data written to output.txt');
  } catch (e) {
    print('Error during file operations: $e');
  }
}

// Date and Time
void dateTimeUtilities() {
  DateTime now = DateTime.now();
  DateTime futureDate = now.add(Duration(days: 10));
  DateTime pastDate = now.subtract(Duration(days: 5));

  // Format and parse dates
  String formattedDate = now.toIso8601String();
  print('Current DateTime: $formattedDate');
  print('Future DateTime: ${futureDate.toIso8601String()}');
  print('Past DateTime: ${pastDate.toIso8601String()}');

  // Calculate the difference between two dates
  Duration difference = futureDate.difference(pastDate);
  print('Difference between future and past date: ${difference.inDays} days');
}

// Main Application
void main() {
  // String Manipulation
  print('String Manipulation:');
  String userInput = 'Dart Programming';
  String result = manipulateString(userInput);
  print(result);

  // Collections
  print('Collections Demonstration:');
  demonstrateCollections();

  // File Handling
  print('File Handling:');
  fileHandling();

  // Date and Time
  print('Date and Time Utilities:');
  dateTimeUtilities();
}
