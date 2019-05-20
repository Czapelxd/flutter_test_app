import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Platform.isIOS/
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Platform.isIOS
              ? CupertinoSwitch(
                  value: true,
                  onChanged: (v) => null,
                )
              : Switch(
                  value: true,
                  onChanged: (v) => null,
                ),
        ),
      ),
    );
  }
}

class AwesomePage extends StatefulWidget {
  final Color color;

  AwesomePage({Key key, this.color = Colors.blue}) : super(key: key);

  @override
  _AwesomePageState createState() => _AwesomePageState();
}

class _AwesomePageState extends State<AwesomePage> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Text('$count'),
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
