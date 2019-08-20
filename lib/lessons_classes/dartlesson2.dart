import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_web_view/flutter_web_view.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:html/dom.dart' as dom;
import 'package:open_file/open_file.dart';
import 'dart:io';


class DartScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://flutter.su/note/183',
      hidden: true,
      scrollBar: true,
      withJavascript: true,
      withLocalUrl: true,
      enableAppScheme: true,
      withZoom: true,
      allowFileURLs: true,
      supportMultipleWindows: true,
      appCacheEnabled: true,
      clearCache: true,
      withLocalStorage: true,
      geolocationEnabled: true,
      primary: true,
      appBar: AppBar(title: Text("FLUTTER.SU"),
        backgroundColor: Colors.blue,),

    );
  }
}