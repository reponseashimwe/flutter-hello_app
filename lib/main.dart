import 'package:flutter/material.dart';
import 'page/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Developer Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF9AAE),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
