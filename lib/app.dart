import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:panda/size_config.dart';
import 'package:panda/view/home_page.dart';

class PandaApp extends StatelessWidget {
  const PandaApp({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(builder: (context, constraints) {
        SizeConfig().init(context, constraints);
        return MaterialApp(
            useInheritedMediaQuery: true,
            builder: DevicePreview.appBuilder, // Подключает поддержку превью
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true),
            home: const HomePage());
      });
}
