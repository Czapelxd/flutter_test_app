// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

import './services/services.dart';
import './screens/screens.dart';

void main() => runApp(MyApp());
// 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Report>.value(
          stream: Global.reportRef.documentStream,
        ),
        StreamProvider<FirebaseUser>.value(
          stream: AuthService().user,
        ),
      ],
      child: MaterialApp(
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: FirebaseAnalytics())
        ],
        routes: {
          '/': (context) => LoginScreen(),
          '/topics': (context) => TopicsScreen(),
          '/about': (context) => AboutScreen(),
          '/profile': (context) => ProfileScreen(),
        },
        theme: ThemeData(
          bottomAppBarTheme: BottomAppBarTheme(
            color: Colors.black87,
          ),
          brightness: Brightness.dark,
          textTheme: TextTheme(
            body1: TextStyle(fontSize: 18),
            body2: TextStyle(fontSize: 16),
            button: TextStyle(letterSpacing: 1.0),
            headline: TextStyle(fontWeight: FontWeight.bold),
            subhead: TextStyle(color: Colors.black12),
          ),
          buttonTheme: ButtonThemeData(),
        ),
      ),
    );
  }
}
