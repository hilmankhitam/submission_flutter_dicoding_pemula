import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:submission/models/hotel_model.dart';
import 'package:submission/screens/detailpage.dart';
import 'package:submission/theme/theme.dart';
import 'package:submission/widgets/rating_star.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            HomePageTop(),
            HomePageBottom(),
          ],
        ),
      ),
    );
  }
}

class HomePageTop extends StatefulWidget {
  @override
  _HomePageTopState createState() => _HomePageTopState();
}

class _HomePageTopState extends State<HomePageTop> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            height: 180,
            color: accentColor1,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin),
              child: Column(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.only(top: defaultMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.location_on, color: Colors.white),
                          Text('Banjarmasin (Kalimantan Selatan)',
                              style: whiteTextFont),
                          Icon(Icons.keyboard_arrow_down, color: Colors.white)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(30),
                      child: TextField(
                        controller: searchController,
                        cursorColor: accentColor1,
                        decoration: InputDecoration(
                            hintText: 'Favorite Hotel',
                            hintStyle: blackTextFont,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                            suffix: Material(
                                elevation: 0,
                                borderRadius: BorderRadius.circular(30),
                                child: Icon(Icons.search)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomePageBottom extends StatefulWidget {
  @override
  _HomePageBottomState createState() => _HomePageBottomState();
}

class _HomePageBottomState extends State<HomePageBottom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: defaultMargin, right: defaultMargin, bottom: 100),
      child: Column(
        children: <Widget>[
          Row(
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
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: hotels.length,
              itemBuilder: (BuildContext context, int index) {
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
                    height: 180,
                    margin: EdgeInsets.only(bottom: 10, top: 5),
                    width: MediaQuery.of(context).size.width - 48,
                    child: Stack(
                      alignment: Alignment.topCenter,
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
                                  height: 180,
                                  width: MediaQuery.of(context).size.width - 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(hotel.imageUrl),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Container(
                                    height: 180,
                                    padding: EdgeInsets.all(16),
                                    width:
                                        MediaQuery.of(context).size.width - 48,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      width: 300,
                                      child: Text(hotel.name,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: whiteTextFont.copyWith(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2)),
                                    ),
                                    RatingStars(rating: hotel.rating,starSize: 20),
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
    );
  }
}
