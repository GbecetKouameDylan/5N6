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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              child: Row(
                children: <Widget>[
                 Expanded(
                   flex: 2,
                   child: Container(
                     color: Colors.red,
                     height: 200,
                   ),
                 ),
                  Expanded(
                    flex: 1,
                    child: Row(
                       children: [
                         Expanded(
                           flex: 1,
                           child: Container(
                             margin: const EdgeInsets.fromLTRB(0,0,0,100),
                             child: Text("yo", style: TextStyle(color: Colors.red))
                             ,
                           ),
                         ),
                         Expanded(
                           flex: 1,

                           child: Container(
                             margin: const EdgeInsets.fromLTRB(0,100,0,0),
                             color: Colors.black,
                           ),
                         )
                       ],
                    ),
                  )
                ],

              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Bouton du bas')
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
