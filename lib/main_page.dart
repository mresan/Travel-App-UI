import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/destination.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(24, 40, 24, 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44,
                      width: MediaQuery.of(context).size.width / 2 - 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: blue2Color,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.place,
                              color: blueColor,
                            ),
                            Text(
                              'Chicago, USA',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 46,
                        width: 46,
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 0, 30),
                child: Text(
                  'Welcome to USA, \nGeorge!',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: blue2Color,
                ),
                margin: EdgeInsets.symmetric(horizontal: 24),
                height: 47,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(
                        Icons.search,
                        color: blueColor,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 31, 0, 10),
                child: Text(
                  'Favorite Places',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 24),
                    favorite(
                      'assets/images/tree.png',
                      'assets/images/place1.png',
                      'Lincoln Park',
                      '34 West 57th Street, PH',
                      '9.8 mi',
                      context,
                    ),
                    SizedBox(width: 16),
                    favorite(
                      'assets/images/bed.png',
                      'assets/images/place2.png',
                      'Rest & Beef',
                      '11 North 35th Street, NY',
                      '6.2 mi',
                      context,
                    ),
                    SizedBox(width: 16),
                    favorite(
                      'assets/images/beach.png',
                      'assets/images/place5.jpg',
                      'Florida Beach',
                      '11 North 45th Street, FL',
                      '3.7 mi',
                      context,
                    ),
                    SizedBox(width: 24),
                  ],
                ),
              ),
              SizedBox(height: 21),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 0, 0, 21),
                child: Text(
                  'Nearest Places',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(width: 24),
              nearest(
                'assets/images/bed.png',
                'assets/images/place3.jpg',
                'Royal Albert Hotel',
                '231 East 95th Street, HK',
                '2.8 mi',
                context,
              ),
              SizedBox(height: 16),
              nearest(
                'assets/images/tree.png',
                'assets/images/place4.png',
                'Ray National Park',
                '165 South 77th Street, UT',
                '9.8 mi',
                context,
              ),
              SizedBox(height: 16),
              nearest(
                'assets/images/mountain.png',
                'assets/images/place6.jpg',
                'Saint ELias Mount',
                '95 West 17th Street, SE',
                '13.1 mi',
                context,
              ),
              SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
