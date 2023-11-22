import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_text_style.dart';

class AppThemes {

  static const Color mainDarkGrey=Color(0xff18181B);
  static const Color coral500=Color(0xffE55A53);
  static const Color coral400=Color(0xffF87871);
  static const Color neutral400=Color(0xff9890A6);
  static const Color tabBarBackGround=Color(0xFF393640);
  static  const Color oNeutral400= Color(0xff9890A6);
  static  const Color oBlack=Color(0xFF262628);
  static  const Color oBlack6= Color(0xFF323235);
  static  Color oWhite600=const Color(0xffFFFFFF).withOpacity(.48);
  static  Color oWhite300=const Color(0xffffffff).withOpacity(.16);



  /// App Dark Theme
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: mainDarkGrey,
    brightness: Brightness.dark,
    textTheme: appTextThemeLight,
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: mainDarkGrey,

      elevation: 10,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: coral400,
      unselectedItemColor: oWhite600,
    ),
    tabBarTheme: TabBarTheme(
        dividerHeight: 0,
        unselectedLabelColor: const Color(0xffffffff).withOpacity(.48),
        indicatorColor: AppThemes.coral400,
        labelStyle: const TextStyle(color: AppThemes.coral400,fontWeight: FontWeight.w900,fontSize: 16),
        splashFactory: NoSplash.splashFactory

    ),
    bottomSheetTheme: BottomSheetThemeData(
      dragHandleColor: coral400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.w)),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: MaterialStatePropertyAll<Color>(Colors.white),
    ),
  );


}