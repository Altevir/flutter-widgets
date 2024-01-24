import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/main_page.dart';
import 'package:flutter_widgets/pages/widget_1_banner.dart';
import 'package:flutter_widgets/pages/widget_2_environment.dart';
import 'package:flutter_widgets/pages/widget_3_enums.dart';

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
        fontFamily: 'montserrat',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: const Color(0xff1f1f1f),
          onPrimary: Colors.black,
          primaryContainer: const Color(0xff1f1f1f),
          onPrimaryContainer: Colors.white,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color(0xff1f1f1f),
          titleTextStyle: TextStyle(
            fontFamily: 'montserratSemiBold',
            fontSize: 18,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/widget1Banner': (context) => const Widget1Banner(),
        '/widget2Environment': (context) => const Widget2Environment(),
        '/widget3Enums': (context) => const Widget3Enums(),
      },
    );
  }
}
