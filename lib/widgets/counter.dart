import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
            onPressed: _decrementCounter,
            icon: Icon(
              Icons.remove_circle_outline,
              color: Colors.black,
              size: 30,
            )),
        AnimatedOpacity(
          opacity: _counter != 0 ? 1.0 : 0.0,
          duration: Duration(milliseconds: 500),
          child: Text(
            '$_counter',
            style: TextStyle(
              color: Color(0xFF090909),
              fontSize: 18,
              fontFamily: 'Product Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        IconButton(
          onPressed: _incrementCounter,
          icon: Icon(
            Icons.add_circle_outline,
            color: Colors.black,
            weight: 0.1,
            size: 30,
          ),
        ),
      ],
    );
  }
}
