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
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('siema'),
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: Theme.of(context).textTheme.display2,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        drawer: Drawer(),
      ),
    );
  }
}

// class BoxDecorationW extends StatelessWidget {
//   const BoxDecorationW({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 100,
//         height: 100,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           border: Border.all(width: 5, color: Colors.red),
//           boxShadow: [
//             BoxShadow(offset: Offset(40, 40), color: Colors.pink),
//             BoxShadow(offset: Offset(20, 20), color: Colors.yellow),
//             ],
//           shape: BoxShape.circle,
//           gradient: RadialGradient(colors: [Colors.yellow, Colors.pink]),
//         ),
//       ),
//     );
//   }
// }

// class PlatformCheck extends StatelessWidget {
//   const PlatformCheck({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Platform.isIOS
//           ? CupertinoSwitch(
//               value: true,
//               onChanged: (v) => null,
//             )
//           : Switch(
//               value: true,
//               onChanged: (v) => null,
//             ),
//     );
//   }
// }

// class AwesomePage extends StatefulWidget {
//   final Color color;

//   AwesomePage({Key key, this.color = Colors.blue}) : super(key: key);

//   @override
//   _AwesomePageState createState() => _AwesomePageState();
// }

// class _AwesomePageState extends State<AwesomePage> {
//   int count = 0;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: FlatButton(
//         child: Text('$count'),
//         onPressed: () {
//           setState(() {
//             count++;
//           });
//         },
//       ),
//     );
//   }
// }
