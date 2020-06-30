import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screens/queue/liked_queue.dart';
import 'package:myproject/screens/queue/recent_queue.dart';
import 'package:myproject/screens/queue/top_queue.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/buttons.dart';
import 'package:myproject/widgets/cards.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhiteColor,
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(20),
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'name',
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: myPrimaryColor),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Where are you going today?',
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: myBlackColor),
                        )
                      ],
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: myLightColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: myLightColor),
                child: Stack(
                  children: <Widget>[
                    TextField(
                      maxLengthEnforced: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            left: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          border: InputBorder.none,
                          hintText: 'Search here...',
                          hintStyle: GoogleFonts.openSans(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: myBlueGreyColor,
                          )),
                      style: GoogleFonts.openSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: myBlackColor),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: myPrimaryColor),
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              print("Search");
                            },
                            borderRadius: BorderRadius.circular(10),
                            splashColor: Colors.deepOrange[600],
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: myWhiteColor,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          iconButton(
                              icon: Icons.access_time,
                              trigger: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RecentQueue()));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Recent',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: myPrimaryColor),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          iconButton(
                              icon: Icons.whatshot,
                              trigger: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TopQueue()));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Top',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: myPrimaryColor),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          iconButton(
                              icon: Icons.favorite_border,
                              trigger: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LikedQueue()));
                              }),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Liked',
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: myPrimaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Headline',
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: myBlackColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 156,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: myWhiteColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/headline-img.jpg',
                    ),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                  'Always remember to stay 2 meters apart from each other.',
                  style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: myDarkGreyColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  'Top Queues',
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: myBlackColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                height: 210,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    smallCard(
                      context: context,
                      shopName: 'name',
                      imagePath: 'assets/images/img-1.jpg',
                    ),
                    smallCard(
                      context: context,
                      shopName: 'name',
                      imagePath: 'assets/images/img-1.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
