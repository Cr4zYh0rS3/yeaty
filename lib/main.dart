import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yeaty/screens/home_view.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'yeaty',
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: kLightColorWhite,
            secondary: const Color(0xffe3e3e3),
            background: const Color(0xffe84b4a),
          ),
        ),
        home: const HomeView(),
      );
    });
  }
}
