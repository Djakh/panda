import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/assets/colors/app_colors.dart';
import 'package:panda/assets/constants/app_images.dart';
import 'package:panda/assets/style.dart';
import 'package:panda/size_config.dart';
import 'package:panda/view/regions_page.dart';

class GeoLocationPage extends StatefulWidget {
  const GeoLocationPage({super.key});

  @override
  State<GeoLocationPage> createState() => _GeoLocationPageState();
}

class _GeoLocationPageState extends State<GeoLocationPage> {
  String selectedLanguage = "O'zbekcha"; // Default selection

  /// --- Methods ---

  void onTapContinue() => Navigator.push(context, CupertinoPageRoute(builder: (_) => const RegionsPage()));

  /// --- Widgets ---

  Widget svgImage(String image) => Center(
        child: Image.asset(AppImages.geoLocation, height: 383.h, width: 375.w),
      );

  Widget spacerOrSizedBox(int number) =>
      SizeConfig.screenHeight > 660 ? const Spacer() : SizedBox(height: SizeConfig.screenHeight / number);

  Widget get description => Text('Так мы сможем показать интересные предложения и пункты выдачи-приёма рядом с вами',
      textAlign: TextAlign.center, style: Style.bodyw4);

  Widget buttonText(String text, {bool isBorder = false}) => Text(text, style: Style.bodyw4PrimaryOrw6White(isBorder));

  Widget get allowAccessButton => MaterialButton(
      onPressed: () {},
      height: 56,
      minWidth: double.infinity,
      color: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: buttonText('Разрешить доступ'));

  Widget get indicateLocationButton => GestureDetector(
      onTap: onTapContinue,
      child: Container(
          height: 51,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: AppColors.primary, width: 1)),
          alignment: Alignment.center,
          child: buttonText("Указать местоположение", isBorder: true)));

  List<Widget> get view => [
        svgImage(AppImages.geoLocation),
        spacerOrSizedBox(20),
        Text('Разрешите доступ к геопозиции', textAlign: TextAlign.center, style: Style.headlinew6),
        SizedBox(height: 24 * SizeConfig.rh),
        description,
        SizedBox(height: 37 * SizeConfig.rh),
        allowAccessButton,
        const SizedBox(height: 16),
        indicateLocationButton,
        spacerOrSizedBox(16),
      ];

  Widget listView(List<Widget> children) => ListView(physics: const ClampingScrollPhysics(), children: children);

  Widget column(List<Widget> children) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      );

  Widget get checkView =>
      Padding(padding: const EdgeInsets.all(24.0), child: SizeConfig.screenHeight > 660 ? column(view) : listView(view));

  @override
  Widget build(BuildContext context) => Scaffold(backgroundColor: AppColors.white, body: SafeArea(child: checkView));
}
