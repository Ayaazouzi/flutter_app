import 'package:flutter/material.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌟📖Citation du jour 💬🧠'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _quoteCard(
            quote: "Le succès n’est pas la clé du bonheur. Le bonheur est la clé du succès.",
            author: "Albert Schweitzer",
            imageUrl: 'https://th.bing.com/th/id/OIP.MB9j0ZqwtzT3u1292q7aZAHaI1?w=155&h=186&c=7&r=0&o=7&dpr=1.4&pid=1.7&rm=3',
          ),
          _quoteCard(
            quote: "Croyez en vous-même et en tout ce que vous êtes.",
            author: "Christian D. Larson",
            imageUrl: 'https://christianlarson.wwwhubs.com/larson.jpg',
          ),
          _quoteCard(
            quote: "Commencez là où vous êtes. Utilisez ce que vous avez. Faites ce que vous pouvez.",
            author: "Arthur Ashe",
            imageUrl: 'https://tse2.mm.bing.net/th/id/OIP.OoIkTknVJ9OBCGJqXAsb_QHaGW?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
          ),
        ],
      ),
    );
  }

  Widget _quoteCard({required String quote, required String author, required String imageUrl}) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              quote,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Image.network(imageUrl, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 8),
            Text(
              author,
              style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
