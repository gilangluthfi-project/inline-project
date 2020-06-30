import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screens/queue/create_queue.dart';
import 'package:myproject/screens/queue/inqueue.dart';
import 'package:myproject/screens/queue/queues.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/buttons.dart';

//full width queue card widget
Widget queueCards({BuildContext context, label, imagePath}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Queues()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 1,
        child: Container(
          height: 120,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: myLightColor),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: imagePath,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(label,
                                  style: GoogleFonts.openSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: myBlackColor)),
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Icon(
                                    Icons.star,
                                    size: 16,
                                    color: Colors.yellow[400],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('4',
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: myBlackColor)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text('(32 visitors)',
                                      style: GoogleFonts.openSans(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: myBlackColor)),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text('3 visitor(s) at a time',
                                  style: GoogleFonts.openSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: myPrimaryColor)),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: Text('waiting',
                                  style: GoogleFonts.openSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: myBlackColor)),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, left: 40),
                              child: Text('14/25',
                                  style: GoogleFonts.openSans(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: myPrimaryColor)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Convallis posuere morbi leo urna. Nec feugiat nisl pretium fusce id.',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: myBlackColor),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//liked queuecard widget
Widget likedCards({BuildContext context, label, imagePath}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Queues()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 1,
        child: Container(
          height: 120,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    color: myLightColor),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: imagePath,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(label,
                                style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: myBlackColor)),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              child: LikedButton(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Convallis posuere morbi leo urna. Nec feugiat nisl pretium fusce id.',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: myBlackColor),
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//small card widget

Widget smallCard({BuildContext context, shopName, imagePath}) {
  return Container(
    margin: EdgeInsets.only(right: 5),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Queues()));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 1,
        child: Container(
          width: 156,
          child: Column(
            children: <Widget>[
              Container(
                width: 156,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: myLightColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      imagePath,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(shopName,
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: myBlackColor)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text('waiting :',
                                style: GoogleFonts.openSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: myBlackColor)),
                          ),
                          Container(
                            child: Text('14/25',
                                style: GoogleFonts.openSans(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: myPrimaryColor)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//current queue card widget
Widget currentQueueCard({BuildContext context}) {
  return Container(
    child: InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InQueue()));
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 140,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                width: 40,
                height: 40,
                child: Icon(
                  Icons.history,
                  size: 32,
                  color: myBlackColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: Text('Thursday, 14/06/2020, 14.30',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: myDarkGreyColor)),
                  ),
                  Container(
                    child: Text('Shop Name',
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: myBlackColor)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 128,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.amberAccent,
                    ),
                    child: Center(
                      child: Text('In Queue',
                          style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: myWhiteColor)),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: Text('No.',
                        style: GoogleFonts.openSans(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: myBlackColor)),
                  ),
                  Container(
                    child: Text('0',
                        style: GoogleFonts.openSans(
                            fontSize: 56,
                            fontWeight: FontWeight.w600,
                            color: myPrimaryColor)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}

//complete queue card widget
Widget completeQueueCard() {
  return Container(
    child: GestureDetector(
      onTap: () {
        print("Clicked");
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          height: 140,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                width: 40,
                height: 40,
                child: Icon(
                  Icons.history,
                  size: 32,
                  color: myBlackColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: Text('Thursday, 14/06/2020, 14.30',
                        style: GoogleFonts.openSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: myDarkGreyColor)),
                  ),
                  Container(
                    child: Text('Shop Name',
                        style: GoogleFonts.openSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: myBlackColor)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 128,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text('Completed',
                          style: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: myWhiteColor)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

//created queue card widget
Widget createdQueueCard({BuildContext context, label}) {
  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
        color: myWhiteColor,
        border:
            Border.all(width: 1.0, color: myDarkGreyColor.withOpacity(0.5))),
    child: Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: Text(label,
                style: GoogleFonts.openSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: myBlackColor)),
          ),
          Container(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: ClipOval(
                  child: Material(
                    color: Colors.green[400], // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateQueue()));
                      },
                    ),
                  ),
                )),
                Container(
                    child: ClipOval(
                  child: Material(
                    color: Colors.red[800], // button color
                    child: InkWell(
                      child: SizedBox(
                          width: 40,
                          height: 40,
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          )),
                      onTap: () {
                        createAlertDialog(context);
                      },
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

createAlertDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Are you sure to delete this queue?',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: myBlackColor)),
          actions: <Widget>[
            Container(
                child: ClipOval(
              child: Material(
                color: Colors.green[400], // button color
                child: InkWell(
                  child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      )),
                  onTap: () {},
                ),
              ),
            )),
            Container(
                child: ClipOval(
              child: Material(
                color: Colors.red[800], // button color
                child: InkWell(
                  child: SizedBox(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                      )),
                  onTap: () {},
                ),
              ),
            )),
          ],
        );
      });
}

//notification card widget
Widget notificationCard({icon, label, sublabel}) {
  return Container(
    height: 80,
    width: double.infinity,
    decoration: BoxDecoration(
        color: myWhiteColor,
        border:
            Border.all(width: 1.0, color: myDarkGreyColor.withOpacity(0.5))),
    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              child: ClipOval(
            child: Material(
              color: myPrimaryColor, // button color
              child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.feedback,
                    color: Colors.white,
                  )),
            ),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(label,
                    style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: myBlackColor)),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(sublabel,
                    style: GoogleFonts.openSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
