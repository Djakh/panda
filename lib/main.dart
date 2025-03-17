import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/view/home_page.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => ScreenUtilInit(
          designSize: const Size(375, 812), // Set the base screen size (default iPhone X)
          minTextAdapt: true, // Makes text adapt to small screens
          builder: (context, child) => MaterialApp(
              useInheritedMediaQuery: true,
              builder: DevicePreview.appBuilder, // Подключает поддержку превью
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
              home: const HomePage()))));
}
