import 'dart:convert';

import 'package:http/http.dart' as http; 
import 'package:gogogo/Model/Bike.dart';

Future<List<Bike>> fetchProducts() async {
  final url = Uri.parse('https://65e5c93dd7f0758a76e762d6.mockapi.io/product');
  final response = await http.get(url);
  
  if (response.statusCode == 200) {
    final List<dynamic> jsonResponse = jsonDecode(response.body) as List;
    return jsonResponse.map((item) => Bike.fromJson(item)).toList();
  } else {
    // Handle error scenario (e.g., throw an exception)
    throw Exception('Failed to load products from API');
  }
}
