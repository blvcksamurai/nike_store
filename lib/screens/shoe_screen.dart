import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store_app/widgets/counter.dart';

import '../widgets/kick_picker.dart';

class ShowScreen extends StatelessWidget {
  const ShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/heart.svg',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 20),
                        SvgPicture.asset(
                          'assets/images/bag22.svg',
                          height: 24,
                          width: 24,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 227,
                height: 43,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Women shoes',
                      style: TextStyle(
                        color: Color(0xFF797979),
                        fontSize: 14,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Air Jordan 1 Elevate High',
                      style: TextStyle(
                        color: Color(0xFF090909),
                        fontSize: 20,
                        fontFamily: 'Product Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     Container(
              //       width: 50,
              //       height: 250,
              //       child: Column(
              //           mainAxisSize: MainAxisSize.min,
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             KickPicker(image: 'assets/images/s1.png'),
              //             KickPicker(image: 'assets/images/s2.png'),
              //             KickPicker(image: 'assets/images/s3.png'),
              //             KickPicker(image: 'assets/images/s4.png'),
              //           ]),
              //     ),
              //   ],
              // ),
              Container(
                width: 451.76,
                height: 423.64,
                margin: EdgeInsets.only(left: 10),
                child: Stack(
                  children: [
                    Positioned(
                      left: 380.16,
                      top: 56,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(1.57),
                        child: Text(
                          'NIKE',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFFF1F1F1),
                            fontSize: 132.44,
                            fontFamily: 'Product Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 55,
                      top: 69.42,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(-0.12),
                        child: Container(
                          width: 358.83,
                          height: 282,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/aj.png'),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 70,
                                offset: Offset(55, 34),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   left: 75,
                    //   top: 361,
                    //   child: Container(
                    //     width: 290,
                    //     height: 54,
                    //     decoration: ShapeDecoration(
                    //       shape: OvalBorder(
                    //         side: BorderSide(
                    //             width: 1.70, color: Color(0xFFBDBDBD)),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      left: 10,
                      top: 33,
                      child: Container(
                        width: 50,
                        height: 250,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              KickPicker(image: 'assets/images/s1.png'),
                              KickPicker(image: 'assets/images/s2.png'),
                              KickPicker(image: 'assets/images/s3.png'),
                              KickPicker(image: 'assets/images/s4.png'),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 220,
                    width: 420,
                    color: Colors.white,
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 30),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'UK 4',
                                      style: TextStyle(
                                        color: Color(0xFF828282),
                                        fontSize: 16,
                                        fontFamily: 'Product Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(width: 36),
                                    Text(
                                      'UK 4.5',
                                      style: TextStyle(
                                        color: Color(0xFF828282),
                                        fontSize: 16,
                                        fontFamily: 'Product Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Qty',
                                      style: TextStyle(
                                        color: Color(0xFFBDBDBD),
                                        fontSize: 16,
                                        fontFamily: 'Product Sans',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    CounterScreen()
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
