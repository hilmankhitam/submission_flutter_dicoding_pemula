import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:submission/models/hotel_model.dart';
import 'package:submission/theme/theme.dart';
import 'package:submission/widgets/rating_star.dart';

class WebDetailPage extends StatelessWidget {
  final Hotel hotel;
  WebDetailPage({this.hotel});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              color: accentColor1,
              height: 300,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: accentColor1,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 400,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 6)
                              ],
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage(hotel.imageUrl),
                                  fit: BoxFit.cover),
                            ),
                            child: Container(
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
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            child: Text('Book Now'),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                primary: accentColor1,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 130, vertical: 15),
                                textStyle: whiteTextFont.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 6)
                              ],
                            ),
                            child: Column(
                              children: [
                                Text(hotel.name,textAlign: TextAlign.center,
                                    style: blackTextFont.copyWith(
                                      fontSize: 24,
                                    )),
                                SizedBox(height: 10),
                                RatingStars(
                                    rating: hotel.rating,
                                    starSize: 30,
                                    color: Colors.black,
                                    fontSize: 18),
                                SizedBox(height: 10),
                                Text(hotel.description,
                                    style: blackTextFont.copyWith(
                                      fontSize: 18,
                                    ),
                                    textAlign: TextAlign.justify),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Top Reviewer',
                              style: blackTextFont.copyWith(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: accentColor3),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: hotel.review.map((review) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage:
                                              review.imageReviewer != null
                                                  ? NetworkImage(
                                                      review.imageReviewer)
                                                  : AssetImage(
                                                      'assets/images/aria.jpg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(review.name,
                                                style: blackTextFont.copyWith(
                                                    fontSize: 16)),
                                            RatingStars(
                                              rating: review.rating,
                                              starSize: 12,
                                            ),
                                            SizedBox(height: 5),
                                            Container(
                                                width: (MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        2) -
                                                    (200),
                                                child: Text(review.comment,
                                                    textAlign:
                                                        TextAlign.justify,
                                                    style:
                                                        blackTextFont.copyWith(
                                                            fontSize: 16))),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}