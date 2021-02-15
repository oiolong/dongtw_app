import 'package:flutter/material.dart';


class WidgetWebview extends StatefulWidget {
  String remoteUrl = "https://www.baidu.com";
  String localUrl = "assets/html/login.html";
  bool useWebviewFlutter = true; // 是否使用 flutter 提供的插件

  @override
  _WidgetWebviewState createState() =>
      useWebviewFlutter ? _WebviewFlutterState() : _FlutterWebViewPluginState();
}
/// 方便将两个插件放在一起对比~
abstract class _WidgetWebviewState extends State<WidgetWebview> {}

class _WebviewFlutterState extends _WidgetWebviewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebViewFlutter 与 JS 交互"),
      ),
    );
  }
}

class _FlutterWebViewPluginState extends _WidgetWebviewState {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterWebViewPlugin 与 JS 交互"),
      ),
    );
  }
}
