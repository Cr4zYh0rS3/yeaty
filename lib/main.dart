import 'package:flutter/material.dart';
import 'package:yeaty/screens/cafe_detail.dart';
import 'package:yeaty/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yeaty',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xffe3e3e3),
          secondary: const Color(0xff484848),
          background: const Color(0xffed3938),
        ),
      ),
      home: const HomeView(),
      routes: {
        HomeView.RouteName: (context) => const HomeView(),
        CafeDetail.RouteName: (context) => const CafeDetail(),
      },
    );
  }
}
