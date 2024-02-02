// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestSellersItem extends StatelessWidget {
  String name, gender, price, discount, image;
  BestSellersItem({
    required this.name,
    required this.price,
    required this.gender,
    required this.discount,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 140,
      margin: EdgeInsets.only(bottom: 20),
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
            offset: Offset(0, 15),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '$gender shoes',
                    style: TextStyle(
                      color: Color(0xFF797979),
                      fontSize: 12,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '5.0 ',
                        style: TextStyle(
                          color: Color(0xFF2C2C2C),
                          fontSize: 12,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SvgPicture.asset('assets/images/rating.svg')
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$$price',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '$discount% OFF',
                        style: TextStyle(
                          color: Color(0xFF219653),
                          fontSize: 12,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/arrow.svg',
                        width: 60,
                        height: 50,
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
