import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  String text;
  BigText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xFF090909),
        fontSize: 20,
        fontFamily: 'Product Sans',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    );
  }
}
