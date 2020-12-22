import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var budget = 0.00;
String strbudget = budget.toStringAsFixed(2);

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
              child: Row(
                children: <Widget>[
                  Text(strbudget, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                  new Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Colors.black,
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BudgetMenu(),
                      ));
                    }
                  )
                ]
              )
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

class BudgetMenu extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Cartshier'),
          backgroundColor: Colors.black,
        )));
}}
        
        