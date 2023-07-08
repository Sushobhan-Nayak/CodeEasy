import 'package:flutter/material.dart';
import 'package:hello_world/models/web_view.dart';
import 'package:hello_world/screens/articlecard.dart';
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
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
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
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: StackedCardCarousel(
          type: StackedCardCarouselType.cardsStack,
          initialOffset: 5,
          spaceBetweenItems: 425,
          items: const [
            ArticleCard(
                url: "https://www.geeksforgeeks.org/array-data-structure/",
                title: 'Arrays'),
            ArticleCard(
                url: "https://www.geeksforgeeks.org/string-data-structure/",
                title: 'Strings'),
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
                url: "https://www.geeksforgeeks.org/tree-data-structure/",
                title: 'Trees')
          ],
        ));
  }
}
