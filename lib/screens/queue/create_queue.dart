import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/tools/color_constant.dart';
import 'package:myproject/widgets/buttons.dart';
import 'package:myproject/widgets/inputfield.dart';

class CreateQueue extends StatefulWidget {
  @override
  _CreateQueueState createState() => _CreateQueueState();
}

class _CreateQueueState extends State<CreateQueue> {
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
                    'Create a Queues',
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
          child: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Container(
              child: Text(
                'Get ready to host your queue',
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: myBlackColor),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Form(
                child: Column(
                  children: <Widget>[
                    secondayInputField(
                        label: 'Host Name',
                        maxLines: 1,
                        maxLength: 20,
                        keyboardType: TextInputType.text,
                        hintText: 'Store, shop, or service name'),
                    secondayInputField(
                        label: 'Host Address',
                        maxLines: 2,
                        maxLength: 100,
                        keyboardType: TextInputType.text,
                        hintText: 'Store, service, or host address'),
                    secondayInputField(
                        label: 'Description',
                        maxLines: 3,
                        maxLength: 200,
                        keyboardType: TextInputType.multiline,
                        hintText: 'Add some description about your queue '),
                    secondayInputField(
                        label: 'Visitor Limit',
                        sublabel:
                            'This controls how many visitors in your queue to enter at once',
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        hintText: '4'),
                    secondayInputField(
                        label: 'Queue Limit',
                        sublabel:
                            'This controls how many visitors can be in your queue at one time.',
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                        hintText: '4'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Text(
                'Upload photo',
                style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: myBlackColor),
              ),
            ),
            SizedBox(height: 20),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: iconButton(icon: Icons.photo_camera, trigger: () {}),
                ),
                Container(
                  child: Text(
                    'image.jpg',
                    style: GoogleFonts.openSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: myBlackColor),
                  ),
                )
              ],
            )),
            SizedBox(
              height: 50,
            ),
            primaryButton(label: 'Create Queue', trigger: () {}),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
