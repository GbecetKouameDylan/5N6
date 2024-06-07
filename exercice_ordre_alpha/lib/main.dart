import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DemoListe(title: 'Flutter Demo Home Page'),
    );
  }
}

class DemoListe extends StatefulWidget {
  const DemoListe({super.key, required this.title});

  final String title;

  @override
  State<DemoListe> createState() => _DemoListeState();
}

class ListeNom {
  late String nom;

}

class _DemoListeState extends State<DemoListe> {
  List<ListeNom> listeEnMemoire = [];

  @override
  void initState() {
    super.initState();
    listeEnMemoire = [];
    for (var i = 0; i < 100; i++) {
      ListeNom element = ListeNom();
      element.nom = "D + ${i}";
      listeEnMemoire.add(element);
    }
  }

  void rafraichir() {
    listeEnMemoire = [];
    Random rand = Random();
    for (var i = 0; i < 20; i++) {
      ListeNom element = ListeNom();
      element.nom = "D + ${rand.nextInt(20)}";
      listeEnMemoire.add(element);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoListe'),
      ),
      body: Center(
          child: ListView.builder(
            itemCount: listeEnMemoire.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text('${listeEnMemoire[index].nom}'));
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: rafraichir,
        tooltip: 'Increment',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
