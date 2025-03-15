import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://backendboba.onrender.com"; // Hosted backend

  static Future<Map<String, dynamic>> signup(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/signup"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"username": username, "password": password}),
      );

      if (response.statusCode == 201) {
        return {"success": true, "message": "Signup successful!"};
      } else {
        return {"success": false, "message": jsonDecode(response.body)['error'] ?? "Signup failed"};
      }
    } catch (e) {
      return {"success": false, "message": "Network error: $e"};
    }
  }

  static Future<Map<String, dynamic>> login(String username, String password) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/signin"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"username": username, "password": password}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return {"success": true, "message": "Login successful!", "username": data['username']};
      } else {
        return {"success": false, "message": jsonDecode(response.body)['error'] ?? "Login failed"};
      }
    } catch (e) {
      return {"success": false, "message": "Network error: $e"};
    }
  }
}
