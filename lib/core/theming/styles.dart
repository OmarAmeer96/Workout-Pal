import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workout_pal/core/theming/colors_manager.dart';
import 'package:workout_pal/core/theming/font_family_helper.dart';

class Styles {
  // Main Fonts
  static TextStyle onboardingTitleFont = TextStyle(
    fontSize: 20.sp,
    color: Colors.black,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle onboardingContentFont = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
  );

  // Not Main Fonts
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle appBarTitle = TextStyle(
    fontSize: 22.sp,
    color: Colors.white,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle splashViewTextLogoFont = TextStyle(
    fontSize: 36.sp,
    color: ColorsManager.primaryColor,
    fontFamily: GoogleFonts.dancingScript(
      fontWeight: FontWeight.w900,
    ).fontFamily,
  );

  static TextStyle productItemTitle = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle productItemSubTitle = TextStyle(
    fontSize: 14.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
  );

  static TextStyle productNewPriceFont = TextStyle(
    fontSize: 12.sp,
    color: Colors.deepOrange,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle productOldPriceFont = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle ratingFont = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.bold,
  );

  static TextStyle ratingCountFont = TextStyle(
    fontSize: 12.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
  );

  static TextStyle font18White600 = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );

  static TextStyle font13GreyBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.mainGrey,
    fontFamily: FontFamilyHelper.regular,
  );

  static TextStyle enabledTextFieldsLabelText = TextStyle(
    color: ColorsManager.mainGrey,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.medium,
  );
  static TextStyle focusedTextFieldsLabelText = TextStyle(
    color: ColorsManager.focusedLabelTextColor,
    fontSize: 14.sp,
    fontFamily: FontFamilyHelper.medium,
  );
}
