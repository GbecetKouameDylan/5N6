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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
        Container(
        margin: const EdgeInsets.all(10),
        height: 200,
        color: Colors.red,
      ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  color: Colors.redAccent,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.purple,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                color: Colors.green,
              ),
      ],
        ),
      ),
    );
  }
}
