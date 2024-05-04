import 'package:classical_education/screens/course_details_screen.dart';
import 'package:classical_education/screens/courses_screen.dart';
import 'package:classical_education/screens/start_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
