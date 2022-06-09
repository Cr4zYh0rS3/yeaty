import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yeaty/screens/cafe_detail.dart';
import 'package:yeaty/screens/home_view.dart';
import 'package:yeaty/screens/login/login_details.dart';
import 'package:yeaty/screens/login/login_main.dart';
import 'package:yeaty/screens/popular_show_more.dart';
import 'package:yeaty/screens/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
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
        home: const LoginMain(),
        routes: {
          LoginMain.RouteName: (context) => const LoginMain(),
          LoginDetails.RouteName: (context) => const LoginDetails(),
          HomeView.RouteName: (context) => const HomeView(),
          CafeDetail.RouteName: (context) => const CafeDetail(),
          PopularShowMore.RouteName: (context) => const PopularShowMore(),
          Search.RouteName: (context) => const Search(),
        },
      );
    });
  }
}
