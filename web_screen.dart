import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
    ..loadRequest(
      Uri.parse('https://flutter.dev/')
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("WEB VIEW : "),

      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}


//yaml
 // line no : 39: webview_flutter: 4.2.2
//build.gradle
//line no 51 : minSdkVersion 21
              //targetSdkVersion 34
