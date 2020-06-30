import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/screens/queue/create_queue.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/buttons.dart';
import 'package:myproject/widgets/cards.dart';

class AddQueue extends StatefulWidget {
  @override
  _AddQueueState createState() => _AddQueueState();
}

class _AddQueueState extends State<AddQueue> {
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
                    'Host a Queues',
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
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Column(
                children: <Widget>[
                  addButton(
                      icon: Icons.add,
                      label: 'Create Queue',
                      trigger: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateQueue()));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: myDarkGreyColor,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  createdQueueCard(context: context, label: 'Name')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
