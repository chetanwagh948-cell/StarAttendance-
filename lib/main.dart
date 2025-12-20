import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const StarAttendanceApp());
}

class StarAttendanceApp extends StatelessWidget {
  const StarAttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StarAttendance',
      home: const LoginScreen(),
    );
  }
}
