import 'package:flutter/material.dart';
import 'package:submission/models/hotel_model.dart';

class FavoriteButton extends StatefulWidget {
  final Hotel hotel;
  FavoriteButton({this.hotel});
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
 
class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(widget.hotel.isFavorite ? Icons.favorite : Icons.favorite_border, color: Colors.red),
      onPressed: () {
        setState(() {
          widget.hotel.isFavorite = !widget.hotel.isFavorite;
        });
      },
    );
  }
}