import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/assets/colors/app_colors.dart';
import 'package:panda/size_config.dart';

class Style {
  /// Brightness of the app
  static Brightness get appBrightness => Brightness.light;

  /// Border radius templates
  static BorderRadius get borderVerBottom95 => const BorderRadius.vertical(
        bottom: Radius.circular(95.0),
      );

  static BorderRadius get border95 => const BorderRadius.all(
        Radius.circular(95.0),
      );

  static BorderRadius get border32 => const BorderRadius.all(
        Radius.circular(32.0),
      );

  static BorderRadius get borderVer24 => const BorderRadius.vertical(
        top: Radius.circular(24.0),
      );

  static BorderRadius get border24 => const BorderRadius.all(
        Radius.circular(24.0),
      );

  static BorderRadius get borderVer36 => const BorderRadius.vertical(
        top: Radius.circular(36.0),
      );

  static BorderRadius get border20 => const BorderRadius.all(
        Radius.circular(20.0),
      );

  static BorderRadius get borderVer20 => const BorderRadius.vertical(
        top: Radius.circular(20.0),
      );

  static BorderRadius get borderTop20 => const BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      );

  static BorderRadius get border16 => const BorderRadius.all(
        Radius.circular(16.0),
      );

  static BorderRadius get borderOnlyTop16 => const BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0));

  static BorderRadius get border14 => const BorderRadius.all(
        Radius.circular(14.0),
      );
  static BorderRadius get border12 => const BorderRadius.all(Radius.circular(12.0));

  static BorderRadius get border10 => const BorderRadius.all(Radius.circular(10.0));

  static BorderRadius get borderOnlyRight8 => const BorderRadius.only(
        topRight: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      );

  static BorderRadius get borderOnlyLeft8 => const BorderRadius.only(
        topLeft: Radius.circular(8.0),
        bottomLeft: Radius.circular(8.0),
      );

  static BorderRadius get borderOnlyTopLeft8 => const BorderRadius.only(
        topLeft: Radius.circular(8.0),
      );
  static BorderRadius get border8 => const BorderRadius.all(
        Radius.circular(8.0),
      );

  static BorderRadius get border6 => const BorderRadius.all(
        Radius.circular(6.0),
      );

  static BorderRadius get border4 => const BorderRadius.all(
        Radius.circular(4.0),
      );

  static BorderRadius get border2 => const BorderRadius.all(
        Radius.circular(2.0),
      );

  /// Padding templates
  static EdgeInsets get padding0 => EdgeInsets.zero;

  static EdgeInsets get padding4 => const EdgeInsets.all(4.0);

  static EdgeInsets get paddingVer4 => const EdgeInsets.symmetric(vertical: 4.0);

  static EdgeInsets get paddingHor34Ver4 => const EdgeInsets.symmetric(horizontal: 34, vertical: 4.0);

  static EdgeInsets get paddingHor4Ver6 => const EdgeInsets.symmetric(horizontal: 4, vertical: 6.0);

  static EdgeInsets get padding6 => const EdgeInsets.all(6.0);

  static EdgeInsets get paddingHor6Ver12 => const EdgeInsets.symmetric(horizontal: 6, vertical: 12.0);

  static EdgeInsets get padding8 => const EdgeInsets.all(8.0);

  static EdgeInsets get paddingHor8 => const EdgeInsets.symmetric(horizontal: 8.0);

  static EdgeInsets get paddingHor8Ver4 => const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4);

  static EdgeInsets get padding10 => const EdgeInsets.all(10.0);

  static EdgeInsets get paddingHor10 => const EdgeInsets.symmetric(horizontal: 10.0);

  static EdgeInsets get padding12 => const EdgeInsets.all(12.0);

  static EdgeInsets get paddingVer12 => const EdgeInsets.symmetric(vertical: 12.0);

  static EdgeInsets get paddingHor12 => const EdgeInsets.symmetric(horizontal: 12.0);

  static EdgeInsets get paddingHor12Ver6 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6);

  static EdgeInsets get paddingHor12Ver8 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8);

  static EdgeInsets get paddingHor12Ver10 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10);

  static EdgeInsets get paddingHor12Ver14 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14);

  static EdgeInsets get paddingHor12Ver16 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16);

  static EdgeInsets get padding14 => const EdgeInsets.all(14.0);

  static EdgeInsets get padding16 => const EdgeInsets.all(16.0);

  static EdgeInsets get paddingHor16 => const EdgeInsets.symmetric(horizontal: 16.0);

  static EdgeInsets get paddingHor16Ver8 => const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

  static EdgeInsets get paddingHor16Ver12 => const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12);

  static EdgeInsets get paddingVer16 => const EdgeInsets.symmetric(vertical: 16.0);

  static EdgeInsets get paddingVer16Hor12 => const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16);

  static EdgeInsets get paddingVer18Hor18 => const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18);

  static EdgeInsets get paddingOnlyLeft16 => const EdgeInsets.only(left: 16.0);
  static EdgeInsets get paddingOnlyTop12 => const EdgeInsets.only(top: 12.0);

  static EdgeInsets get paddingOnlyRight16 => const EdgeInsets.only(right: 16.0);

  static EdgeInsets get padding18 => const EdgeInsets.all(18.0);

  static EdgeInsets get paddingVer18 => const EdgeInsets.symmetric(vertical: 18.0);

  static EdgeInsets get padding20 => const EdgeInsets.all(20.0);

  static EdgeInsets get paddingHor20 => const EdgeInsets.symmetric(horizontal: 20.0);

  static EdgeInsets get paddingVer20 => const EdgeInsets.symmetric(horizontal: 20.0);

  static EdgeInsets get paddingHor20Ver12 => const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0);
  static EdgeInsets get paddingHor24Ver12 => const EdgeInsets.symmetric(horizontal: 20, vertical: 12.0);

  static EdgeInsets get padding22 => const EdgeInsets.all(22.0);

  static EdgeInsets get padding24 => const EdgeInsets.all(24.0);

  static EdgeInsets get paddingHor24Ver6 => const EdgeInsets.symmetric(horizontal: 24, vertical: 6.0);

  static EdgeInsets get paddingHor24Ver20 => const EdgeInsets.symmetric(horizontal: 24, vertical: 20.0);

  static EdgeInsets get paddingHor20Ver40 => const EdgeInsets.symmetric(horizontal: 20, vertical: 40.0);

  static EdgeInsets get pading16$20$16$12 => const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0);
  static EdgeInsets get pading16$16$16$0 => const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0);
  static EdgeInsets get pading12$0$0$12 => const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 12.0);

  static EdgeInsets get paddingHor30 => const EdgeInsets.symmetric(horizontal: 30.0);

  static EdgeInsets get padding32 => const EdgeInsets.all(32.0);

  static EdgeInsets get paddingHor40 => const EdgeInsets.symmetric(horizontal: 40.0);

  static EdgeInsets get paddingHor48 => const EdgeInsets.symmetric(horizontal: 48.0);

  static EdgeInsets paddingHorizontal(double horizontal) => EdgeInsets.symmetric(horizontal: horizontal);

  static EdgeInsets paddingVertical(double vertical) => EdgeInsets.symmetric(vertical: vertical);

  /// Margin templates
  static EdgeInsets get margin20 => padding20;

  /// Typography
  static String get fontFamily => "Gilroy";

  static TextStyle get headlinew7 =>
      TextStyle(fontFamily: fontFamily, fontSize: 24 * SizeConfig.rw, height: 1, fontWeight: FontWeight.w700, color: AppColors.primary);

  static TextStyle get headlinew6 =>
      TextStyle(fontFamily: fontFamily, fontSize: 24 * SizeConfig.rw, height: 1, fontWeight: FontWeight.w600, color: AppColors.primary);

  static TextStyle get bodyw4 => TextStyle(fontFamily: fontFamily, fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.primary);

  static TextStyle get small3w4 => TextStyle(fontFamily: fontFamily, fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.primary);

  /// Dynamic typography
  static TextStyle bodyw4PrimaryOrw6White(bool isNotWhite) => TextStyle(
      fontFamily: fontFamily,
      fontSize: 16.sp,
      fontWeight: isNotWhite ? FontWeight.w400 : FontWeight.w600,
      color: isNotWhite ? AppColors.primary : AppColors.white);
}
