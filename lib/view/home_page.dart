import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panda/assets/colors/app_colors.dart';
import 'package:panda/assets/constants/app_images.dart';
import 'package:panda/assets/style.dart';
import 'package:panda/size_config.dart';
import 'package:panda/view/geo_location_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedLanguage = "O'zbekcha"; // Default selection

  /// --- Methods ---

  void onTapSelectLanguage(String language) {
    selectedLanguage = language;

    setState(() {});
  }

  void onTapContinue() =>
    Navigator.push(context, CupertinoPageRoute(builder: (_) => const GeoLocationPage()));
  

  /// --- Widgets ---

  Widget svgImage(String image) => Center(child: SvgPicture.asset(image));

  Widget buttonText(String text, {bool isBorder = false}) => Text(text, style: Style.bodyw4PrimaryOrw6White(isBorder));

  Widget selectLanguageButton(String language) => GestureDetector(
      onTap: () => onTapSelectLanguage(language),
      child: Container(
          height: 51,
          decoration: BoxDecoration(
              color: selectedLanguage == language ? AppColors.primary : AppColors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.primary, width: 1)),
          alignment: Alignment.center,
          child: buttonText(language, isBorder: selectedLanguage != language)));

  Row selectLanguageButtons() => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(child: selectLanguageButton("O'zbekcha")),
        const SizedBox(width: 16),
        Expanded(child: selectLanguageButton("Русский"))
      ]);

  Widget get continueButton => MaterialButton(
      onPressed: onTapContinue,
      height: 56,
      minWidth: double.infinity,
      color: AppColors.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: buttonText('Продолжить'));
  Widget spacerOrSizedBox(int number) =>
      SizeConfig.screenHeight >= 600 ? const Spacer() : SizedBox(height: SizeConfig.screenHeight / number);

  List<Widget> get view => [
        spacerOrSizedBox(8),
        svgImage(AppImages.panda),
        const SizedBox(height: 36),
        svgImage(AppImages.pandaWord),
        spacerOrSizedBox(6),
        Text('Выберите язык приложения', textAlign: TextAlign.center, style: Style.headlinew6),
        const SizedBox(height: 36),
        selectLanguageButtons(),
        const SizedBox(height: 16),
        continueButton,
        SizedBox(height: 50 * SizeConfig.rh)
      ];

  Widget listView(List<Widget> children) => ListView(physics: const ClampingScrollPhysics(), children: children);

  Widget column(List<Widget> children) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      );

  Widget get checkView =>
      Padding(padding: const EdgeInsets.symmetric(horizontal: 24.0), child: SizeConfig.screenHeight >= 600 ? column(view) : listView(view));

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: AppColors.white,
    body: SafeArea(child: checkView));
}
