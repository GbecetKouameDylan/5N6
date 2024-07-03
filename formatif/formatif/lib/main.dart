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



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
             children: <Widget> [

            Row(
        children: <Widget>[
          Expanded(
            flex: 4,
              child: Container(
            color: Colors.purple,
                height: 50,
          ),
          ),
          Expanded(
            child: Container(

            ),
          )
        ],
            ),


         Row(
           children: <Widget>[
             Expanded(

               child: Container(

               ),
             ),
             Expanded(
               flex: 4,
               child: Container(
                 color: Colors.red,
                 height: 50,
               ),
             ),

           ],
         ),

        Spacer(flex: 2,),

         Row(
           children: <Widget>[
            Text("ssggs")
           ],
         ),

         Spacer(flex: 2,)

           ]
        ),
      ),


    );
  }
}
