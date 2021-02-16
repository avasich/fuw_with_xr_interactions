import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fuw and xr interactions',
      home: UnityScreen(),
    );
  }
}

class UnityScreen extends StatefulWidget {
  @override
  _UnityScreenState createState() => _UnityScreenState();
}

class _UnityScreenState extends State<UnityScreen> {
  UnityWidgetController _controller;

  @override
  Widget build(BuildContext context) {
    return UnityWidget(onUnityCreated: _onUnityCreated);
  }

  void _onUnityCreated(UnityWidgetController controller) {
    print("unity created");
    _controller = controller;
  }
}
