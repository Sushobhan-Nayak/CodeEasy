import 'package:flutter/material.dart';
import 'package:hello_world/models/web_view.dart';
import 'dart:math';

class ArticleCard extends StatefulWidget {
  final String url;
  final String title;
  const ArticleCard({super.key, required this.url, required this.title});

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomnumber = random.nextInt(7);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          color: Theme.of(context).colorScheme.primary,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2)),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              SizedBox(
                  height: 300,
                  width: 350,
                  child: Image.asset('assets/images/code$randomnumber.jpg')),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Theme.of(context).colorScheme.secondary)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WebView(
                                url: widget.url,
                              )));
                    },
                    child: Text(
                      'Read more...',
                      style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
                    )),
              )
            ],
          )),
    );
  }
}
