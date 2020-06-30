import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/cards.dart';

class TopQueue extends StatefulWidget {
  @override
  _TopQueueState createState() => _TopQueueState();
}

class _TopQueueState extends State<TopQueue> {
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
                    'Top Queues',
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
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  queueCards(
                      context: context,
                      label: 'Simetri Coffee',
                      imagePath: Image.asset(
                        'assets/images/img-1.jpg',
                        fit: BoxFit.cover,
                      )),
                  queueCards(context: context, label: 'Adam Barber'),
                  queueCards(context: context, label: 'Mc Donald'),
                  queueCards(context: context, label: 'Mic & Mac'),
                  queueCards(context: context, label: 'Cragos'),
                  queueCards(context: context, label: 'Wineyard'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
