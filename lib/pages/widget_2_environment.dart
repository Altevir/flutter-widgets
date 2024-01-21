import 'package:flutter/material.dart';

class Widget2Environment extends StatefulWidget {
  const Widget2Environment({super.key});

  @override
  State<Widget2Environment> createState() => _Widget2EnvironmentState();
}

class _Widget2EnvironmentState extends State<Widget2Environment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Variáveis de ambiente'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meu ambiente',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              String.fromEnvironment('environment'),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Endereço da API',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              String.fromEnvironment('baseUrl'),
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
