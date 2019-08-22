part of lessons;

abstract class AbstractScreen extends StatelessWidget {
  final String url = 'https://flutter.su/';

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(

      url: '$url?contentonly',
      hidden: true,
      scrollBar: true,
      withJavascript: true,
      withLocalUrl: true,
      enableAppScheme: true,
      withZoom: true,
      allowFileURLs: true,
      supportMultipleWindows: false,
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