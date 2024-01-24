import 'package:flutter/material.dart';
import 'package:flutter_widgets/globals/enum_menus.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter - Widgets'),
      ),
      body: ListView.builder(
        itemCount: EnumMenus.values.length,
        itemBuilder: (context, index) {
          final item = EnumMenus.values.elementAt(index);
          return ListTile(
            title: Text(item.nome),
            onTap: () {
              Navigator.pushNamed(context, item.rota);
            },
          );
        },
      ),
    );
  }
}
