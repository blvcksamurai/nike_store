import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/big_text.dart';
import '../widgets/tab_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 89,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/notification.svg',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 20),
                    SvgPicture.asset(
                      'assets/images/bag2.svg',
                      height: 24,
                      width: 24,
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              height: 56,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: Color(0xFFF3F3F3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/search.svg'),
                      SizedBox(width: 13),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Color(0xFF090909),
                          fontSize: 16,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/images/mic.svg'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36,
                  height: 29,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Color(0xFF090909),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                TabOptions(text: 'Running'),
                TabOptions(text: 'Jordans'),
                TabOptions(text: 'Sneakers'),
                TabOptions(text: 'Football')
              ],
            ),
            SizedBox(height: 25),
            BigText(text: 'New Arrivals'),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  width: 289,
                  height: 295,
                  color: Colors.red,
                ),
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
                                'Air Jordan 1 Elevate High',
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
                                      '\$ 12,067',
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
                                      '14% OFF',
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
                                'Women shoes',
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
                                child:
                                    SvgPicture.asset('assets/images/arrow.svg'))
                          ],
                        ),
                      ),
                      // assets/images/air_red.svg
                    ],
                  ),
                ),
                Positioned(
                    right: 50.33,
                    bottom: 80,
                    child: SvgPicture.asset('assets/images/air_brown.svg'))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
