import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Wordpair = WordPair.random();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome To Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trying Again'),
          centerTitle: true,
        ),
        body: Center(child: Text(Wordpair.asPascalCase)),
      ),
    );
  }
}
