import 'package:flutter/material.dart';

void main() {
  runApp(PleinDeTaillesApp());
}

class PleinDeTaillesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plein de Tailles',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plein de Tailles'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Center(
            child: orientation == Orientation.portrait
                ? buildPortraitLayout()
                : buildLandscapeLayout(),
          );
        },
      ),
    );
  }

  Widget buildPortraitLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Portrait Layout',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        SizedBox(height: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        SizedBox(height: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ],
    );
  }

  Widget buildLandscapeLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Landscape Layout',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
        SizedBox(width: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        SizedBox(width: 20),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ],
    );
  }
}
