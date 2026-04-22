import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GNewsScreen extends StatefulWidget {
  const GNewsScreen({super.key});

  @override
  State<GNewsScreen> createState() => _GNewsScreenState();
}

class _GNewsScreenState extends State<GNewsScreen> {
  List articles = [];
  bool isLoading = true;

  final String apiKey = "b2e05c81911dbab024ccf18e95e29d10";

  Future<void> fetchNews() async {
    final url = Uri.parse(
      "https://gnews.io/api/v4/top-headlines?country=in&lang=en&apikey=$apiKey",
    );

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          articles = data['articles'];
          isLoading = false;
        });
      } else {
        setState(() => isLoading = false);
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      setState(() => isLoading = false);
      print("Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GNews API", style: TextStyle(fontSize: 30)),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final news = articles[index];

                return Card(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🖼 Image
                      news['image'] != null
                          ? Image.network(news['image'])
                          : Container(),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          news['title'] ?? "No Title",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(news['description'] ?? "No Description"),
                      ),

                      const SizedBox(height: 10),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
