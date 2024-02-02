// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/best_seller_item.dart';
import '../widgets/big_text.dart';
import '../widgets/new_arrivals.dart';
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
      backgroundColor: Color(0xfff7f7f7),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(text: 'New Arrivals'),
                Text(
                  'See all',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF2F80ED),
                    fontSize: 14,
                    fontFamily: 'Product Sans',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NewArrivals(
                    discount: '14',
                    gender: 'Women',
                    image: 'assets/images/air_red.png',
                    name: 'Air Jordan 1 Elevate High',
                    price: '12,067',
                  ),
                  SizedBox(width: 20),
                  NewArrivals(
                    discount: '14',
                    gender: 'Women',
                    image: 'assets/images/nike_sb.png',
                    name: "Nike Sb Low",
                    price: '12,067',
                  ),
                  SizedBox(width: 20),
                  NewArrivals(
                    discount: '14',
                    gender: 'Women',
                    image: 'assets/images/air_brown.png',
                    name: 'Air Jordan 1 Elevate High',
                    price: '12,067',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            BigText(text: 'Best Sellers'),
            SizedBox(height: 25),
            BestSellersItem(
              image: 'assets/images/air_mid.png',
              gender: 'Women',
              name: 'Air Jordan 1 Mid SE',
              discount: '14',
              price: '10,225',
            ),
            BestSellersItem(
              image: 'assets/images/air_gba.png',
              gender: 'Women',
              name: 'Nike SB Low',
              discount: '14',
              price: '9,407',
            ),
            BestSellersItem(
              image: 'assets/images/air_gba.png',
              gender: 'Women',
              name: "Air Force 1's",
              discount: '14',
              price: '7,142',
            ),
            BestSellersItem(
              image: 'assets/images/air_gba.png',
              gender: 'Women',
              name: "Air Force 1's",
              discount: '14',
              price: '7,142',
            ),
            BestSellersItem(
              image: 'assets/images/air_gba.png',
              gender: 'Women',
              name: "Air Force 1's",
              discount: '14',
              price: '7,142',
            ),
          ],
        ),
      ),
    ));
  }
}
