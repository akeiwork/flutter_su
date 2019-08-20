import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



class FlutterScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://flutter.su/tutorial/1-Flutter-pervoe-prilozhenie-Hello-World',
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