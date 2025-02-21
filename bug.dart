```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here.  Note the lack of error handling for jsonDecode
      final data = jsonDecode(response.body);
    } else {
      // Handle the error here.
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle the error here.
    print('Error: $e');
    rethrow; // Re-throw to allow higher level handling
  }
}
```