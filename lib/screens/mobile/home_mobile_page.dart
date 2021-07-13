import 'package:flutter/material.dart';
import 'package:submission/screens/homepage.dart';
import 'package:submission/theme/theme.dart';

class MobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HomePageTop(padding: defaultMargin),
          HomePageBottom(),
        ],
      ),
    );
  }
}