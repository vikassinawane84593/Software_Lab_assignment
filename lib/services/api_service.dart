import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  static const String baseUrl =
      "https://sowlab.com/assignment";

  // LOGIN API
  static Future<Map<String, dynamic>> login(
      String email,
      String password,
      ) async {

    final Uri url =
    Uri.parse("$baseUrl/user/login");

    try {

      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "email": email,
          "password": password,
          "role": "farmer",
          "device_token": "flutter_app",
          "type": "email",
          "social_id": ""
        }),
      );

      final Map<String, dynamic> data =
      jsonDecode(response.body);

      return {
        "status":
        response.statusCode >= 200 &&
            response.statusCode < 300,
        "message":
        data["message"] ?? "Login failed"
      };

    } catch (e) {

      return {
        "status": false,
        "message": "Something went wrong"
      };
    }
  }

  // REGISTER API
  static Future<Map<String, dynamic>> register(
      String fullName,
      String email,
      String password,
      ) async {

    final Uri url =
    Uri.parse("$baseUrl/user/register");

    try {

      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "full_name": fullName,
          "email": email,
          "password": password,
          "role": "farmer"
        }),
      );

      final Map<String, dynamic> data =
      jsonDecode(response.body);

      return {
        "status":
        response.statusCode >= 200 &&
            response.statusCode < 300,
        "message":
        data["message"] ??
            "Registration failed"
      };

    } catch (e) {

      return {
        "status": false,
        "message":
        "Something went wrong"
      };
    }
  }
}