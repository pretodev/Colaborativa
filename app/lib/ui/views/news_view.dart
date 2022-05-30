import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/app_controller.dart';
import '../widgets/page_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final app = context.read<AppController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informativos'),
        centerTitle: true,
      ),
      body: PageBody(
        child: WebView(
          initialUrl: app.config.newsUrl,
        ),
      ),
    );
  }
}
