import 'package:flutter/material.dart';
import 'package:panda/assets/colors/app_colors.dart';
import 'package:panda/assets/constants/app_images.dart';
import 'package:panda/assets/style.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({super.key});

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  /// --- Variables ---
  final List<String> regions = [
    "Андижанская область",
    "Бухарская область",
    "Джизахская область",
    "Каракалпакстан",
    "Навоийская область",
    "Самаркандская область",
    "Ташкентская область",
    "Наманганская область",
    "Ферганская область",
    "Хорезмская область",
    "Сурхандарьинская область",
    "Сырдарьинская область"
  ];

  List<String> filteredRegions = [];

  /// --- Lifecycle ---

  @override
  void initState() {
    super.initState();
    filteredRegions = regions;
  }

  /// --- Methods ---

  void _filterRegions(String query) {
    setState(() {
      filteredRegions = regions.where((region) => region.toLowerCase().contains(query.toLowerCase())).toList();
    });
  }

  /// --- Widgets ---

  Widget image(String image, {double? height, double? width}) =>
      Image.asset(AppImages.search, height: height ?? 18, width: width ?? 18);

  Widget get searchField => TextField(
      onChanged: _filterRegions,
      decoration: InputDecoration(
          prefixIcon: image(AppImages.search),
          hintText: "Поиск",
          hintStyle: Style.small3w4.copyWith(color: AppColors.grey1),
          filled: true,
          fillColor: AppColors.grey0n5,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0), borderSide: BorderSide.none)));

  Widget regionItem(String region) => ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.zero,
      title: Text(region, style: Style.bodyw4),
      trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.primary));

  Widget get regionList => Expanded(
      child: ListView.separated(
          itemCount: filteredRegions.length,
          separatorBuilder: (_, __) => const Divider(thickness: 1, color: AppColors.dividerGrey),
          itemBuilder: (_, index) => regionItem(filteredRegions[index])));

  Widget get view => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 24),
        searchField,
        const SizedBox(height: 24),
        Text("Выбрать область", style: Style.bodyw7),
        regionList
      ]));

  Widget get title => Text("Местоположение", style: Style.headlinew7);

  Widget get backButtonAndTitle => Row(children: [
        IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () => Navigator.pop(context)),
        title
      ]);

  AppBar get appbar => AppBar(
      title: title,
      centerTitle: false,
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      scrolledUnderElevation: 0,
      elevation: 0);

  @override
  Widget build(BuildContext context) =>
      Scaffold(backgroundColor: AppColors.white, appBar: appbar, body: SafeArea(child: view));
}
