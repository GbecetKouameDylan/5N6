import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tape le lapin'),
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
  int _indexLapin = Random().nextInt(3);

int _flops = 0;
  int _pafs  = 0;

  void gererTape(int i)
  {
    if (this._indexLapin == i)
    {
      this._pafs++;
      _indexLapin = Random().nextInt(3);
    }
    else
    {
      this._flops++;
    }
    setState(() {})
    ;
  }

  @override
  Widget build(BuildContext context) {
var b0 = MaterialButton(onPressed: () {
 gererTape(0);
},
  child: Text(this._indexLapin == 0 ?"Lapin":"Taupe"),
);
var b1 = MaterialButton(onPressed: () {
  gererTape(1);
},
  child: Text(this._indexLapin == 1 ?"Lapin":"Taupe"),
);
var b2 = MaterialButton(onPressed: () {
  gererTape(2);
},
  child: Text(this._indexLapin == 2 ?"Lapin":"Taupe"),
);
var b3 = MaterialButton(onPressed: () {
  gererTape(3)
},
  child: Text(this._indexLapin == 3 ?"Lapin":"Taupe"),
);


return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
        "Pafs" + this._pafs.toString(),
        style: TextStyle(color: Colors.green,fontSize: 20)

      )
        ,
                Text("Flops" + this._flops.toString(),
                    style: TextStyle(color: Colors.red,fontSize: 20)
                )
              ],
            ),
            const Text(
              'Tape Lapin',
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900),
            ),
            Text(
              '$_indexLapin',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b0,
                b1
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b2,
                b3
              ],
            )
          ],
        ),
      ),
    );
  }
}
