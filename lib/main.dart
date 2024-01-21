import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/widget_1_banner.dart';
import 'package:flutter_widgets/pages/widget_2_environment.dart';

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
          onPrimary: Colors.white,
          primaryContainer: const Color(0xff1f1f1f),
          onPrimaryContainer: Colors.white,
          surface: const Color(0xff1f1f1f),
          onSurface: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Widget1Banner(),
        '/widget2': (context) => const Widget2Environment(),
      },
    );
  }
}
