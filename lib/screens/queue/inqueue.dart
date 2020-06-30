import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/queue_guest.dart';

class InQueue extends StatefulWidget {
  @override
  _InQueueState createState() => _InQueueState();
}

class _InQueueState extends State<InQueue> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Are you sure to leave this queue?',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: myWhiteColor, boxShadow: [
              BoxShadow(
                  blurRadius: 2,
                  spreadRadius: 0.5,
                  color: Colors.grey.withOpacity(0.1),
                  offset: Offset(0, 1))
            ]),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 40,
                    height: 40,
                    child: Material(
                      shape: CircleBorder(),
                      color: Colors.transparent,
                      child: InkWell(
                        customBorder: CircleBorder(),
                        splashColor: Colors.deepOrange[100],
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          size: 32,
                          color: myBlackColor,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'inline',
                    style: GoogleFonts.nunito(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: myBlackColor),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                  )
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(100),
      ),
      backgroundColor: myWhiteColor,
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Thursday, 04/06/2020, 12:30',
                            style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: myBlackColor),
                          ),
                        ),
                        Container(
                          child: Text(
                            'No.',
                            style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: myBlackColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Shop name',
                            style: GoogleFonts.openSans(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: myBlackColor),
                          ),
                        ),
                        Container(
                          child: Text(
                            '34',
                            style: GoogleFonts.openSans(
                                fontSize: 42,
                                fontWeight: FontWeight.w600,
                                color: myPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: myDarkGreyColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Customer(s) Queue',
                      style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: myBlackColor),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      'This place only allows for 5 customer(s) at a time, with a max queue size of 40. ',
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: myBlackColor),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              queueGuest(),
                              queueGuest(),
                              queueGuest(),
                              queueGuest(),
                              queueGuest()
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              queueGuest(),
                              queueGuest(),
                              queueGuest(),
                              queueGuest(),
                              queueGuest()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      '(Estimate time : 34 Minutes)',
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: myBlackColor),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      '(You are #25 of 32 in the queue.)',
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: myBlackColor),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: myDarkGreyColor,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      'Notice',
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: myBlackColor),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 280,
                    child: Text(
                      'Leaving this queue will forfeit your spot in line.',
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: myBlackColor),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      height: 56,
                      child: OutlineButton(
                        borderSide: BorderSide(color: myPrimaryColor, width: 2),
                        highlightedBorderColor: myPrimaryColor,
                        splashColor: Colors.deepOrange[100],
                        color: myWhiteColor,
                        onPressed: () {
                          createAlertDialog(context);
                        },
                        child: Text(
                          "Leave Queue",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: myPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      width: 300,
                      height: 56,
                      child: FlatButton(
                        color: myPrimaryColor,
                        onPressed: () {},
                        child: Text(
                          "Complete Queue",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: myWhiteColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
