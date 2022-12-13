import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class APTextStyle {
  final BuildContext context;
  APTextStyle(this.context);

  TextStyle get textGlobal {
    return GoogleFonts.nunito(
        fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold);
  }

  TextStyle get subTitleRegister {
    return GoogleFonts.nunito(
        fontWeight: FontWeight.w400, color: Colors.black, fontSize: 16);
  }
  // APTextStyle(context).textGlobal.copyWith(
  //                         color: Colors.black,
  //                         fontWeight: FontWeight.w400,
  //                         fontSize: 16)
}
