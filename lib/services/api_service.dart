import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {

  static const String baseUrl = "http://10.0.2.2:3000/api";

  static Future<dynamic> post(String endpoint, Map data) async {

    final response = await http.post(
      Uri.parse("$baseUrl/$endpoint"),
      headers: {
        "Content-Type": "application/json"
      },
      body: jsonEncode(data),
    );

    return jsonDecode(response.body);
  }

}