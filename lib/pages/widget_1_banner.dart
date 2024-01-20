import 'package:flutter/material.dart';

class Widget1Banner extends StatefulWidget {
  const Widget1Banner({super.key});

  @override
  State<Widget1Banner> createState() => _Widget1BannerState();
}

class _Widget1BannerState extends State<Widget1Banner> {
  @override
  Widget build(BuildContext context) {
    return Banner(
      message: const String.fromEnvironment('environment'),
      location: BannerLocation.topEnd,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text('Banner'),
        ),
        body: Container(),
      ),
    );
  }
}