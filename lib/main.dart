// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: ListView.builder(itemBuilder: (context, idx) {
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            height: 100,
            child: Text('$idx'),
          );
       })
     ),
   );
 }

//   List<Widget> _cards() {
//    return [1,2,3,4,5,6,7,8,9].map((v) => Container(
//        color: Colors.blue,
//        margin: EdgeInsets.all(20),
//        height: 100,
//        child: Text('$v'),
//      )
//    ).toList();
//  }

}

// class RowsAndColums extends StatelessWidget {
//   const RowsAndColums({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       padding: EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Icon(Icons.cake, color: Colors.white, size: 50,),
//           Icon(Icons.cake, color: Colors.white, size: 100,),
//           Icon(Icons.cake, color: Colors.white, size: 150,),
//         ],
//       )
//     );
//   }
// }

// class TextWithTheme extends StatelessWidget {
//   const TextWithTheme({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'Hello World',
//       style: Theme.of(context).textTheme.display2,
//     );
//   }
// }

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
