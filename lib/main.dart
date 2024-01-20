import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/widget_1_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: const Color(0xff1f1f1f),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: const Widget1Banner(),
    );
  }
}
