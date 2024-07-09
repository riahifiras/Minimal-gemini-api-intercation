import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIContentScreen extends StatefulWidget {
  @override
  _APIContentScreenState createState() => _APIContentScreenState();
}

class _APIContentScreenState extends State<APIContentScreen> {
  String _content = "";
  TextEditingController _controller = TextEditingController();

  Future<void> _fetchContent(String userInput) async {
    // URL for generating content
    final url = Uri.parse(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyDg_bXLe5x_luT1HRGNOjoy3enaj5WgKlg");

    // Payload for the request
    final payload = {
      "contents": [
        {
          "parts": [
            {"text": userInput}
          ]
        }
      ]
    };

    // Set headers
    final headers = {"Content-Type": "application/json"};

    try {
      final response =
          await http.post(url, headers: headers, body: jsonEncode(payload));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print(data); // Print the response body
        setState(() {
          _content = data['candidates'][0]['content']['parts'][0]['text'] ??
              "No content generated"; // Adjust this line based on the actual response structure
        });
      } else {
        // Handle error
        print(response.statusCode);
        print(response.body);
      }
    } catch (error) {
      print("Error fetching content: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Content'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  _content,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your input',
                    labelStyle: TextStyle(color: Colors.teal),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    _fetchContent(_controller.text);
                    _controller.text = "";
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Get Content'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
