import 'package:flutter/material.dart';
import 'package:submission/models/hotel_model.dart';
import 'package:submission/theme/theme.dart';
import 'package:submission/widgets/favorite_button.dart';
import 'package:submission/widgets/rating_star.dart';

class MobileDetailPage extends StatelessWidget {
  final Hotel hotel;
  MobileDetailPage({this.hotel});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Hero(
                tag: hotel.imageUrl,
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 6)
                    ],
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage(hotel.imageUrl), fit: BoxFit.cover),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.50),
                            Colors.black.withOpacity(0)
                          ]),
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: accentColor1,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      FavoriteButton(hotel: hotel),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width -
                          (defaultMargin * 2),
                      child: Text(hotel.name,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: whiteTextFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w600)),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(hotel.location,
                            style: whiteTextFont.copyWith(
                                fontSize: 14, fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RatingStars(
                  rating: hotel.rating,
                  starSize: 30,
                  color: Colors.black,
                  fontSize: 18),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Text(hotel.description,
                textAlign: TextAlign.justify,
                style: blackTextFont.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w300)),
          ),
          SizedBox(
            height: 10,
          ),
          Text('Top Reviewer',
              style: blackTextFont.copyWith(
                  fontSize: 22, fontWeight: FontWeight.bold)),
          Container(
            width: MediaQuery.of(context).size.width - (defaultMargin * 2 - 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: accentColor3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: hotel.review.map((review) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: review.imageReviewer != null
                              ? NetworkImage(review.imageReviewer)
                              : AssetImage('assets/images/aria.jpg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(review.name,
                                style: blackTextFont.copyWith(fontSize: 16)),
                            RatingStars(
                              rating: review.rating,
                              starSize: 12,
                            ),
                            SizedBox(height: 5),
                            Container(
                                width: MediaQuery.of(context).size.width -
                                    (defaultMargin * 2 + 48),
                                child: Text(review.comment,
                                    textAlign: TextAlign.justify,
                                    style:
                                        blackTextFont.copyWith(fontSize: 16))),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Book Now'),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: accentColor1,
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                textStyle: whiteTextFont.copyWith(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
