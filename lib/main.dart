import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome To Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trying Again'),
          centerTitle: true,
        ),
        body: const Center(child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final Wordpair = WordPair.random();
    List suggestion = <WordPair>[];
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(itemBuilder: (context, i) {
        final index = i ~/ 2;
        if (index >= suggestion.length) {
          suggestion.addAll(generateWordPairs().take(10));
        }
        return ListTile(
          title: Text(suggestion[index].asPascalCase),
        );
      }),
    );
  }
}
