import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

var budget = 0.00;
var savings = 0.00;
String strbudget = budget.toStringAsFixed(2);
String strSavings = savings.toStringAsFixed(2);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Easy Budget Planner'),
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
                  Text(strbudget, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
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
          title: Text('Easy Budget Planner'),
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed:(){
                                Navigator.pop(context);
                              }
                             )
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            FlatButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => EditBudget(),
                      ));
              },
    color: Colors.deepOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.black),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Icon(Icons.edit, color: Colors.black),
        Text(
            "EDIT BUDGET",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black, fontSize: 18.0),
        ),
    ],
),
          ),
             FlatButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AddSavings(),
                      ));
              },
    color: Colors.deepOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.black),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Icon(Icons.control_point_rounded, color: Colors.black),
        Text(
            "ADD TO SAVINGS",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black, fontSize: 18.0),
        ),
    ],
),
          ),
              FlatButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Transaction(),
                      ));
              },
    color: Colors.deepOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.black),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Icon(Icons.dialpad, color: Colors.black),
        Text(
            "TRANSACTION",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black, fontSize: 18.0),
        ),
    ],
),
          ),
          FlatButton(
              onPressed:(){
                Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Savings(),
                      ));
              },
    color: Colors.deepOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.black),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Icon(Icons.how_to_vote, color: Colors.black),
        Text(
            "MY SAVINGS",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black, fontSize: 18.0),
        ),
    ],
),
          ),  
          
          ]
        )
      )
    );
}}

class EditBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Easy Budget Planner'),
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed:(){
                                Navigator.pop(context);
                              }
                             )
        ),
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(labelText: "Enter your budget"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly
], // Only numbers can be entered
          ),
        ],
      )),
    );
  }
}

class AddSavings extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Easy Budget Planner'),
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed:(){
                                Navigator.pop(context);
                              }
                             )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children:<Widget>[
                  Icon(Icons.check, color:Colors.greenAccent),
                  Text("Successfully added to savings.", style: TextStyle(color: Colors.greenAccent))
                ]
              )
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Text("NEW SAVINGS BALANCE", textAlign: TextAlign.left),
                  Text(strSavings, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.left)
                ]
              )
            )
          ]
        )));

}}
class Savings extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Easy Budget Planner'),
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed:(){
                                Navigator.pop(context);
                              }
                             )
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:[
            
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrange
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Text("YOUR SAVINGS", textAlign: TextAlign.left),
                  Text(strSavings, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.left)
                ]
              )
            ),
              FlatButton(
              onPressed:(){

              },
    color: Colors.deepOrange,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(color: Colors.black),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
        Icon(Icons.delete, color: Colors.black),
        Text(
            "RESET",
            textAlign: TextAlign.left,
            style: TextStyle(
            color: Colors.black, fontSize: 18.0),
        ),
    ],
),
          ), 
          ]
        )));

}}

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Easy Budget Planner'),
          backgroundColor: Colors.black,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
                              color: Colors.white,
                              onPressed:(){
                                Navigator.pop(context);
                              }
                             )
        ),
      body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new TextField(
            decoration: new InputDecoration(labelText: "Enter your total transaction"),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly
], // Only numbers can be entered
          ),
        ],
      )),
    );
  }
}
