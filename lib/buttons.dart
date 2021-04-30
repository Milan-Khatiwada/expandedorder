import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int _counter = 0;
  increment() {
    setState(() {
      _counter++;
    });
  }

  decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 20,
        width: 60,
        child: Row(
          children: [
            GestureDetector(
              onTap: increment,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.add,
                  size: 10,
                ),
              ),
            ),
            SizedBox(width: 10),
            Text('$_counter'),
            SizedBox(width: 10),
            GestureDetector(
              onTap: decrement,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  Icons.remove,
                  size: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final String txt;
  AddButton({this.txt});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {},
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xff30B700),
        ),
      ),
    );
  }
}
