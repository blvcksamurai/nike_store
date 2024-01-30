// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewArrivals extends StatelessWidget {
  String name, price, gender, discount, image;
  NewArrivals(
      {super.key,
      required this.name,
      required this.price,
      required this.gender,
      required this.discount,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 269,
      height: 255,
      child: Stack(
        children: [
          Positioned(
            top: 25,
            child: Container(
              height: 230,
              width: 269,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 50,
                    offset: Offset(0, 14),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              child: Image(
                image: AssetImage(image),
                height: 259,
                width: 275,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 162,
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 216,
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '$discount% OFF',
                    style: TextStyle(
                      color: Color(0xFF219653),
                      fontSize: 14,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 183,
            child: Text(
              '$gender shoes',
              style: TextStyle(
                color: Color(0xFF797979),
                fontSize: 12,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 165,
            child: Text(
              '+4 Colours',
              style: TextStyle(
                color: Color(0xFF2F80ED),
                fontSize: 12,
                fontFamily: 'Product Sans',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
              right: 0,
              top: 195,
              child: SvgPicture.asset('assets/images/arrow.svg'))
        ],
      ),
    );
  }
}
