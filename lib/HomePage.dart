import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1=0, num2=0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void addition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void division() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Output : $sum',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: t1,
              decoration: InputDecoration(
                hintText: "Enter number 1",
              ),
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(),
              controller: t2,
              decoration: InputDecoration(
                hintText: "Enter number 2",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    '+',
                  ),
                  color: Colors.redAccent,
                  onPressed: addition,
                ),
                MaterialButton(
                  child: Text(
                    '-',
                  ),
                  color: Colors.redAccent,
                  onPressed: subtraction,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    '/',
                  ),
                  color: Colors.redAccent,
                  onPressed: division,
                ),
                MaterialButton(
                  child: Text(
                    '*',
                  ),
                  color: Colors.redAccent,
                  onPressed: multiplication,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    'Clear',
                  ),
                  color: Colors.redAccent,
                  onPressed: clear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
