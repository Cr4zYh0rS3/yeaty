import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yeaty/view/screens/product_details.dart';
import 'package:yeaty/view/screens/product_show_more.dart';
import 'package:yeaty/view/screens/showonmap.dart';
import 'view/screens/cafe_detail.dart';
import 'view/screens/home_view.dart';
import 'view/screens/login/login_authenticated.dart';
import 'view/screens/login/login_details.dart';
import 'view/screens/login/login_main.dart';
import 'view/screens/popular_show_more.dart';
import 'view/screens/search.dart';

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
          LoginAuthenticated.RouteName: (context) => const LoginAuthenticated(),
          HomeView.RouteName: (context) => const HomeView(),
          CafeDetail.RouteName: (context) => const CafeDetail(),
          PopularShowMore.RouteName: (context) => const PopularShowMore(),
          ProductShowMore.RouteName: (context) => const ProductShowMore(),
          Search.RouteName: (context) => const Search(),
          ProductDetails.RouteName: (context) => const ProductDetails(),
          ShowOnMap.RouteName: (context) => const ShowOnMap(),
        },
      );
    });
  }
}
