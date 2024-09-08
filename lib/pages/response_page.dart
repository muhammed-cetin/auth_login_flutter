import 'dart:convert';
import 'package:flutter/material.dart';

class ResponsePage extends StatelessWidget {
  final String response;

  const ResponsePage({super.key, required this.response});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = _parseResponse(response);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Response'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Text('ID: ${data['id']}'),
            Text('Username: ${data['username']}'),
            Text('First Name: ${data['firstname']}'),
            Text('Last Name: ${data['lastname']}'),
            Text('Role: ${data['role']}'),
            Text('Token: ${data['token']}'),
          ],
        ),
      ),
    );
  }

  Map<String, dynamic> _parseResponse(String response) {
    return jsonDecode(response) as Map<String, dynamic>;
  }
}
