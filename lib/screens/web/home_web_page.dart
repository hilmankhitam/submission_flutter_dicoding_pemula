import 'package:flutter/material.dart';
import 'package:submission/models/hotel_model.dart';
import 'package:submission/screens/detailpage.dart';
import 'package:submission/screens/homepage.dart';
import 'package:submission/theme/theme.dart';
import 'package:submission/widgets/rating_star.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomePageTop(
              padding: 200,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Top Hotel',
                      style: blackTextFont.copyWith(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  TextButton(
                    child: Text('See All',
                        style: accent1TextFont.copyWith(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      print('see all');
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: (3 / 2),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount: hotels.length,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, index) {
                  Hotel hotel = hotels[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailPage(
                                  hotel: hotel,
                                )));
                    },
                    child: Container(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 2),
                                    blurRadius: 5)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Hero(
                                  tag: hotel.imageUrl,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(hotel.imageUrl),
                                          fit: BoxFit.cover),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              Colors.black.withOpacity(0.61),
                                              Colors.black.withOpacity(0)
                                            ]),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 200,
                                        child: Text(hotel.name,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style: whiteTextFont.copyWith(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1.2)),
                                      ),
                                      RatingStars(
                                          rating: hotel.rating, starSize: 16),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on,
                                              size: 10, color: Colors.white),
                                          SizedBox(width: 5),
                                          Text(hotel.location,
                                              style: whiteTextFont),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}