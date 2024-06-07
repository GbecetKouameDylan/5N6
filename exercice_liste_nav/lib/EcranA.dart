import 'package:flutter/material.dart';

// TODO Un ecran minimal avec un tres peu de code
class Truc{
  String name;
  int id;

  Truc(this.name , this.id);


}
Truc truc1 = Truc("truc1",1);
Truc truc2 = Truc("truc2",2);
Truc truc3 = Truc("truc3",3);
Truc truc4 = Truc("truc4",4);
Truc truc5 = Truc("truc5",5);

class EcranA extends StatefulWidget {

  String leParametre;
   EcranA({Key? key, required this.leParametre}): super(key: key);


  @override
  State<EcranA> createState() => _EcranAState();
}

class _EcranAState extends State<EcranA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran A'),
      ),
      body:
Text(widget.leParametre == "1" ? truc1.name +":"+ truc1.id.toString() :
widget.leParametre == "2" ? truc2.name +":"+ truc2.id.toString() :
widget.leParametre == "3" ? truc3.name +":"+ truc3.id.toString() :
widget.leParametre == "4" ? truc4.name +":"+ truc4.id.toString() :
widget.leParametre == "5" ? truc5.name +":"+ truc5.id.toString() : "")

    );
  }
}