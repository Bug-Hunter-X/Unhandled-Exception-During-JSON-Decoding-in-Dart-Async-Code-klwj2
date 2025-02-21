```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      try {
        final data = jsonDecode(response.body);
        // Process the data
      } catch (e) {
        print('Error decoding JSON: $e');
        //Handle the json decoding error
        rethrow; // Re-throw to allow higher level handling
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; // Re-throw to allow higher level handling
  }
}
```