import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panda/app.dart';

//figma size: h:848 w:428
void main() {
  runApp(DevicePreview(
      enabled: false,
      builder: (context) => ScreenUtilInit(
          designSize: const Size(428, 848), // Set the base screen size (default iPhone X) figma:
          minTextAdapt: true, // Makes text adapt to small screens
          builder: (context, child) => const PandaApp())));
}
