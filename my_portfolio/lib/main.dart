import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/education_section.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Muazam Qayyum',
      home: const HomePage(),
    );
  }
}