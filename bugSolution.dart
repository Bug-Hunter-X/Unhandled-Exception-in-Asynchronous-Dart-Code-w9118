```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Use the data
      //Additional handling for JSON decoding errors:
      if(jsonData is! Map<String, dynamic>){ // Add a check to ensure jsonData is of expected type.
        throw Exception('Invalid JSON response format');
      }
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    // Handle JSON format exceptions
    print('JSON format error: $e');
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
    rethrow; // Re-throw the exception for higher level handling.
  }
}
```