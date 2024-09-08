import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  final String _baseUrl = 'http://testapi.koddanismanlik.com/api/Auth/login';

  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Login failed: ${response.reasonPhrase}');
    }
  }
}
