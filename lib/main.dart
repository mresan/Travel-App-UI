import 'package:flutter/material.dart';
import 'package:travel_app/main_page.dart';

void main() => runApp(TravelApp());

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Proxima Nova'),
      home: MainPage(),
    );
  }
}
