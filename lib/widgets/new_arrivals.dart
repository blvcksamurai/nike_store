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
    return Stack(
      children: [
        Container(width: 289, height: 295, color: Colors.transparent),
        Container(
          margin: EdgeInsets.only(top: 30),
          width: 289,
          height: 281,
          child: Stack(
            children: [
              Container(
                width: 289,
                height: 245,
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
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      top: 152,
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 206,
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
                      top: 173,
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
                      left: 219,
                      top: 155,
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
                        left: 225,
                        top: 185,
                        child: SvgPicture.asset('assets/images/arrow.svg'))
                  ],
                ),
              ),
              // assets/images/air_red.svg
            ],
          ),
        ),
        Positioned(
            right: 20,
            bottom: 40,
            child: Image(
              image: AssetImage(image),
              height: 350,
              width: 400,
            ))
      ],
    );
  }
}
