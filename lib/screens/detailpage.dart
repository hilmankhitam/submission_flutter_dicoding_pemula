import 'package:flutter/material.dart';
import 'package:submission/models/hotel_model.dart';
import 'package:submission/screens/mobile/detail_mobile_page.dart';
import 'package:submission/screens/web/detail_web_page.dart';

class DetailPage extends StatelessWidget {
  final Hotel hotel;
  DetailPage({this.hotel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 800) {
          return MobileDetailPage(hotel: hotel);
        } else {
          return WebDetailPage(hotel: hotel);
        }
      }),
    );
  }
}


