import 'package:flutter/material.dart';
import 'package:submission/theme/theme.dart';

class RatingStars extends StatelessWidget {
  final double rating;
  final double starSize;
  final Color color;
  final double fontSize;
  RatingStars({this.rating, this.starSize,this.color = Colors.white,this.fontSize = 12});
  @override
  Widget build(BuildContext context) {
    int n = rating.round();
    List<Widget> widgets = List.generate(5, (index) => Icon(
      index < n ? Icons.star : Icons.star_border_outlined, color: Colors.yellow, size: starSize
    ));

    widgets.add(SizedBox(width: 3,));
    widgets.add(Text('$rating/5',style: whiteTextFont.copyWith(fontWeight: FontWeight.w300, fontSize: fontSize, color: color)));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widgets,
      
    );
  }
}