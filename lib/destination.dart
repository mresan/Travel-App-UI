import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

Widget favorite(
  String _genre,
  String _imgUrl,
  String _tempat,
  String _alamat,
  String _jarak,
  BuildContext context,
) {
  return Stack(
    children: [
      Container(
        height: 254,
        width: MediaQuery.of(context).size.width / 2 + 20,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(17),
          child: Image.asset(
            _imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 140,
        left: 10,
        child: Container(
          height: 104,
          width: MediaQuery.of(context).size.width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color(0xff93C8D5),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _tempat,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/place.png',
                      color: Color(0xffC9CACC),
                      height: 16,
                      width: 13,
                    ),
                    SizedBox(width: 6),
                    Text(
                      _alamat,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                Text(
                  _jarak,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: Container(
          height: 29,
          width: MediaQuery.of(context).size.width / 6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(0.4),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                _genre,
                height: 14,
                width: 14,
                color: Colors.white.withOpacity(0.5),
              ),
              Text(
                'Parks',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 20,
        bottom: 20,
        child: Container(
          height: 29,
          width: 59,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              'Detail',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: blueColor,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget nearest(
  String _genre,
  String _imgUrl2,
  String _tempat2,
  String _alamat2,
  String _jarak2,
  BuildContext context,
) {
  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 84,
              width: MediaQuery.of(context).size.width - 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.transparent,
                      elevation: 10,
                      child: Container(
                        height: 66,
                        width: 66,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17),
                          child: Image.asset(
                            _imgUrl2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                _genre,
                                height: 11.25,
                                width: 15,
                                color: Colors.pink.withOpacity(0.5),
                              ),
                              SizedBox(width: 5),
                              Text(
                                _tempat2,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            _alamat2,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _jarak2,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffC4C4C4),
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffDFF3F9),
                          ),
                          child: Icon(
                            Icons.arrow_forward_sharp,
                            color: blueColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
