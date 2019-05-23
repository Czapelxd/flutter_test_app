import 'package:firebase_analytics/firebase_analytics.dart';

import './services.dart';

/// Static global state. Immutable services that do not care about build context. 
class Global {
  //App Data
  static final String title = 'test app';
  //Services
  static final FirebaseAnalytics analytics = FirebaseAnalytics();

  //Data Models
  static final Map models = {
    Topic: (data) => Topic.fromMap(data),
    Quiz: (data) => Quiz.fromMap(data),
    Report: (data) => Quiz.fromMap(data),
  };

  // Firestore References for Writes
  static final Collection<Topic> topicsRef = Collection<Topic>(path: 'topics');
  static final UserData<Report> reportRef = UserData<Report>(collection: 'reports'); 


}