import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Cartshier'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('Total Budget', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12 ),),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('0.00', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Text('Edit', style: TextStyle(fontSize: 10),),
            )
          ],
        ),
      ),
    );
  }
}