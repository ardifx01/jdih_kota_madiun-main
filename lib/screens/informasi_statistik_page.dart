import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InformasiStatistikPage extends StatelessWidget {
  const InformasiStatistikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest:
            URLRequest(url: WebUri('https://jdih.madiunkota.go.id/berita')),
      ),
    );
  }
}
