import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myproject/tools/color_constant.dart';

Widget queueGuest() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      children: <Widget>[
        Text(
          '1.',
          style: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w600, color: myBlackColor),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Guest',
          style: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w600, color: myBlackColor),
        ),
      ],
    ),
  );
}
