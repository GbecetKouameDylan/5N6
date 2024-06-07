import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Fibonacci ListView'),
      ),
      body: FibonacciListView(itemCount: 10),

    ),
  ));
}


class FibonacciListView extends StatelessWidget {
  final int itemCount;

  FibonacciListView({required this.itemCount});

  int fibonacci(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Container(

            decoration: BoxDecoration(
border: Border.all()
            ),
         child: ListView.builder(
           padding: const EdgeInsets.all(8),
           itemCount: itemCount,
           itemBuilder: (context, index) {
             return InkWell(
               onTap: () {
                 // Action au clic sur l'élément
               },
               child: Card(
                 elevation: 2,
                 child: Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: Center(
                     child: Text(
                       '${fibonacci(index)}',
                       style: TextStyle(fontSize: 18),
                     ),
                   ),
                 ),
               ),
             );
           },
         ),

       ),
     );

  }
}

