import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:panda/assets/colors/app_colors.dart';
import 'package:panda/assets/constants/app_images.dart';

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

  /// --- Widgets ---

  Widget svgImage(String image) => Center(child: SvgPicture.asset(image));

  Widget buttonText(String text, {bool isBorder = false}) => Text(text,
      style:
          TextStyle(fontSize: 16, fontWeight: isBorder ? FontWeight.w400 : FontWeight.w600, color: isBorder ? Colors.black : Colors.white));

  Widget selectLanguageButton(String language) => GestureDetector(
      onTap: () => onTapSelectLanguage(language),
      child: Container(
          height: 51,
          decoration: BoxDecoration(
              color: selectedLanguage == language ? AppColors.darkGrey : Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.darkGrey, width: 1)),
          alignment: Alignment.center,
          child: buttonText(language, isBorder: selectedLanguage != language)));

  Row selectLanguageButtons() => Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(child: selectLanguageButton("O'zbekcha")),
        const SizedBox(width: 16),
        Expanded(child: selectLanguageButton("Русский"))
      ]);

  Widget get continueButton => MaterialButton(
      onPressed: () {},
      height: 56,
      minWidth: double.infinity,
      color: AppColors.darkGrey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: buttonText('Продолжить'));

  Widget get view => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Spacer(),
          svgImage(AppImages.panda),
          const SizedBox(height: 36),
          svgImage(AppImages.pandaWord),
          const Spacer(),
           Text('Выберите язык приложения', style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600)),
          const SizedBox(height: 36),
          selectLanguageButtons(),
          const SizedBox(height: 16),
          continueButton,
          const SizedBox(height: 50)
        ]),
      );

  @override
  Widget build(BuildContext context) => Scaffold(body: view);
}
