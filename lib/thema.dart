import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 20.0;

double radius8 = 8.0;

BoxShadow shadow = BoxShadow(
  offset: Offset(0, 4),
  color: kDarkLightColor.withOpacity(0.1),
  blurRadius: 10,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;

Color kRedColor = Color(0xFF6E080F);
Color kGreyColor = Color(0xFFA4A69C);
Color kDarkLightColor = Color(0xFF292E39);
Color kGreyLightColor = kGreyColor.withOpacity(0.2);
Color kBlueColor = Color(0xFF52A9E3);
Color kWhiteColor = Color(0xFFFCFCFC);
Color kOrangeColor = Color(0xFFF2913D);
Color kBrownColor = Color(0xFF8E514D);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle greyLightTextStyle = GoogleFonts.poppins(
  color: kGreyLightColor,
);

TextStyle darkLightTextStyle = GoogleFonts.poppins(
  color: kDarkLightColor,
);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: kBlueColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle orangeTextStyle = GoogleFonts.poppins(
  color: kOrangeColor,
);

TextStyle brownTextStyle = GoogleFonts.poppins(
  color: kBrownColor,
);
