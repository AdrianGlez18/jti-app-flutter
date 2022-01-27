// import 'package:flutter/material.dart';
// import 'package:webview_flutter/';

// class WebPage extends StatefulWidget {
//   @override
//   _WebState createState() => _WebState();
// }

// class _WebState extends State<WebPage> {

// Completer<WebViewController> _controller = Completer<WebViewController>();
//   final Set<String> _favorites = Set<String>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WebView(
//         initialUrl: 'https://en.wikipedia.org/wiki/Kraken',
//         onWebViewCreated: (WebViewController webViewController) {
//           _controller.complete(webViewController);
//         },
//       ),
//       floatingActionButton: _bookmarkButton(),
//     );
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'web_view_container.dart';

class WebPage extends StatelessWidget {
  final _links = [
    'https://jtiesit.com',
    'https://www.linkedin.com/company/jtiesit',
    'https://twitter.com/jtiesit',
    'https://www.instagram.com/jtiesit/?hl=es'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: _links.map((link) => _urlButton(context, link)).toList(),
    ))));
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
        padding: EdgeInsets.all(20.0),
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(url),
          onPressed: () => _handleURLButtonPress(context, url),
        ));
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
