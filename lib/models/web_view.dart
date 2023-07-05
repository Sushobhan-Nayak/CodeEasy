import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebView extends StatefulWidget {
  final String url;
  const WebView({super.key, required this.url});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;

  late var url;
  var searchUrl = "https://www.google.com/";
  double progress = 0;
  var urlController = TextEditingController();

  @override
  void initState() {
    super.initState();
    refreshController = PullToRefreshController(
        onRefresh: () {
          webViewController!.reload();
        },
        options: PullToRefreshOptions(
            color: Colors.amber, backgroundColor: Colors.black));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () async {
              if (await webViewController!.canGoBack()) {
                webViewController!.goBack();
              }
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  webViewController!.reload();
                },
                icon: const Icon(Icons.refresh))
          ],
          title: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: TextField(
              onSubmitted: (value) {
                url = Uri.parse(value);
                if (url.scheme.isEmpty) {
                  url = Uri.parse("${searchUrl}search?q=$value");
                }
                webViewController!.loadUrl(urlRequest: URLRequest(url: url));
              },
              controller: urlController,
              decoration: const InputDecoration(
                  hintText: 'Search....',
                  prefixIcon: Icon(Icons.search_outlined)),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: InAppWebView(
                onLoadStart: (controller, url) {
                  var v = url.toString();
                  setState(() {
                    urlController.text = v;
                  });
                },
                pullToRefreshController: refreshController,
                onWebViewCreated: (controller) =>
                    webViewController = controller,
                initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
              ),
            )
          ],
        ));
  }
}
