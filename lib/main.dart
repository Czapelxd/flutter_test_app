// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightGreen,
        
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.red, fontSize: 30),
          headline: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: Text('HOME', style: Theme.of(context).textTheme.headline,),),
        body: Center(
          child: RaisedButton(child: Text('GO'), onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),);
          },color: Colors.lightGreen,) ,
        ),
      );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

// class AnimatedPage extends StatefulWidget {
//   const AnimatedPage({
//     Key key,
//   }) : super(key: key);

//   @override
//   _AnimatedPageState createState() => _AnimatedPageState();
// }

// class _AnimatedPageState extends State<AnimatedPage> {
//   Color color = Colors.green;
//   double width = 100;
//   double height = 100;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: Duration(seconds: 2),
//       curve: Curves.bounceInOut,
//       color: color,
//       width: width,
//       height: height,
//       child: FlatButton(
//         child: Text('Random'),
//         onPressed: () {
//           setState(() {
//             width = Random().nextDouble() * 500;
//             height = Random().nextDouble() * 500;

//             int r = Random().nextInt(255);
//             int b = Random().nextInt(255);
//             int g = Random().nextInt(255);
//             color = Color.fromRGBO(r, g, b, 1);
//           });
//         },
//       ),
//     );
//   }
// }

// class ListBuilderWithController extends StatelessWidget {
//   const ListBuilderWithController({
//     Key key,
//     @required ScrollController controller,
//   }) : _controller = controller, super(key: key);

//   final ScrollController _controller;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//        controller: _controller,
//       itemBuilder: (context, idx) {
//         return Container(
//           color: Colors.green,
//           margin: EdgeInsets.all(20),
//           height: 100,
//           child: Text('$idx'),
//         );
//       },
//     );
//   }
// }

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
