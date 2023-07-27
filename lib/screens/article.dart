import 'package:flutter/material.dart';
import 'package:hello_world/models/web_view.dart';
import 'package:hello_world/models/articlecard.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor:
                Theme.of(context).floatingActionButtonTheme.backgroundColor,
            foregroundColor: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const WebView(
                    url:
                        "https://practice.geeksforgeeks.org/problem-of-the-day",
                  ),
                ),
              );
            },
            child: const Text('POTD'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: StackedCardCarousel(
          type: StackedCardCarouselType.cardsStack,
          initialOffset: 0,
          spaceBetweenItems: 425,
          items: const [
            ArticleCard(
                url: "https://www.geeksforgeeks.org/array-data-structure/",
                title: 'Array'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/string-data-structure/",
                title: 'String'),
            ArticleCard(
                url: "https:www.geeksforgeeks.org/binary-search/",
                title: 'Binary Search'),
            ArticleCard(
                url:
                    "https://www.geeksforgeeks.org/introduction-to-recursion-data-structure-and-algorithm-tutorials/",
                title: 'Recursion'),
            ArticleCard(
                url:
                    "https://www.geeksforgeeks.org/data-structures/linked-list/",
                title: 'Linked List'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/stack-data-structure/",
                title: 'Stack'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/queue-data-structure/",
                title: 'Queue'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/hashing-data-structure/",
                title: 'Hashing'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/tree-data-structure/",
                title: 'Trees')
          ],
        ));
  }
}
