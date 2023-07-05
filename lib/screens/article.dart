import 'package:flutter/material.dart';
import 'package:hello_world/models/web_view.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WebView(
                        url:
                            "https://practice.geeksforgeeks.org/problem-of-the-day",
                      )));
            },
            child: const Text('POTD'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WebView(
                            url:
                                "https://www.geeksforgeeks.org/array-data-structure/",
                          )));
                },
                child: const Text('Arrays')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WebView(
                            url:
                                "https://www.geeksforgeeks.org/string-data-structure/",
                          )));
                },
                child: const Text('Strings')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WebView(
                            url: "https://www.geeksforgeeks.org/binary-search/",
                          )));
                },
                child: const Text('Binary Search')),
          ],
        ));
  }
}
