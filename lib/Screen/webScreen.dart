import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebScreen extends StatefulWidget {
  WebScreen({Key? key, required this.URL}) : super(key: key);
  String? URL;

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  InAppWebViewController? webViewController;
  String? URL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              onPressed: () {
                webViewController?.goBack();
              },
              child: Icon(Icons.arrow_back)),
          FloatingActionButton(
              onPressed: () {
                webViewController?.reload();
              },
              child: Icon(Icons.restart_alt_sharp)),
          FloatingActionButton(
              onPressed: () {
                webViewController?.goForward();
              },
              child: Icon(Icons.arrow_forward)),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Web App"),

      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(widget.URL!),
        ),
        onWebViewCreated: (controller) {
          webViewController = controller;
        },
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: false,
          ),
          android: AndroidInAppWebViewOptions(
            useHybridComposition: true,
          ),
          ios: IOSInAppWebViewOptions(
            allowsInlineMediaPlayback: true,
          ),
        ),
      ),
    );
  }
}
