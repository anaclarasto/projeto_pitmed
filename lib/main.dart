import 'package:flutter/material.dart';

import 'FirstRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    String glicose;
    String temperatura;
    return Scaffold(
      appBar: AppBar(title: const Text('Avaliação de risco em saúde')),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Preencha os dados:',
              style: TextStyle(fontSize: 15),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Glicose (em jejum)',    
              ),
              onChanged: (text) {
                glicose = text;
          
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Temperatura (em °C)',
              ),
              onChanged: (text) {
                temperatura = text;
              },
            ),
            ElevatedButton(
              child: Text('Resultado'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                ); // Navigate to second route when tapped.
              },
            ),
          ],
        ),
      ),
    );
  }
}
