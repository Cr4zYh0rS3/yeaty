import 'package:flutter/material.dart';
import 'package:yeaty/view/widgets/intro_title.dart';
import 'package:yeaty/view/widgets/place_box.dart';
import 'package:yeaty/view/widgets/product_box.dart';

class CustomIntroWidget extends StatelessWidget {
  final String maintitle;
  final String description;
  final String direction_name;
  final String direction_path;
  final Widget widget;
  const CustomIntroWidget({Key? key, required this.maintitle, required this.description, required this.direction_name, required this.direction_path, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        IntroTitle(mainTitle: maintitle, description: description, direction_name: direction_name, direction_path: direction_path),
        Padding(
          padding: EdgeInsets.only(left: deviceSize.width * 0.04),
          child: SizedBox(
            width: deviceSize.width,
            height: deviceSize.width * 0.8,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/cafe-detail');
                  },
                  child: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                );
              }),
            ),
          ),
        ),
        SizedBox(height: deviceSize.height * 0.02),
        IntroTitle(
            mainTitle: "Yeaty puanlar ile ödeyin",
            description: "Seçili ürünleri anlaşmalı restoran ve kafelerimizde topladığınız Yeaty puanlar ile ödeyin.",
            direction_name: "Tümünü gör",
            direction_path: '/product-show-more'),
        Padding(
          padding: EdgeInsets.only(left: deviceSize.width * 0.04),
          child: SizedBox(
            width: deviceSize.width,
            height: deviceSize.width * 0.75,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/product-details');
                  },
                  child: ProductBox(
                    image_adress: 'assets/images/mainDishStoreBg.jpg',
                    price: 60,
                    title: "Uber Burger",
                    cafe_name: "Uber Restorant",
                    rev_count: 52,
                    stars: 4,
                    isMain: true,
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(height: deviceSize.height * 0.03),
      ],
    );
  }
}
