import 'package:flutter/material.dart';

class TabOptions extends StatelessWidget {
  String text;
  TabOptions({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 29,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF444444)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF444444),
          fontSize: 14,
          fontFamily: 'Product Sans',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}
