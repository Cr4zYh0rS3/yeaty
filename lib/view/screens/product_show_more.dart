import 'package:flutter/material.dart';
import 'package:yeaty/view/widgets/product_box.dart';
import 'package:yeaty/view/widgets/search_bar.dart';

import '../../constants/colors.dart';

class ProductShowMore extends StatelessWidget {
  const ProductShowMore({Key? key}) : super(key: key);
  static const RouteName = '/product-show-more';

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchBar(),
            SizedBox(
              width: deviceSize.width,
              height: deviceSize.height - deviceSize.height * 0.18,
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.05, bottom: deviceSize.width * 0.03, top: deviceSize.width * 0.01),
                    child: Text(
                      "Yeaty ile anlaşmalı mekanlar",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.043, color: kMainToneBlack),
                    ),
                  ),
                  Padding(
                    //FIXME used padding to center fix it
                    padding: EdgeInsets.only(left: deviceSize.width * 0.032, top: deviceSize.height * 0.01),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: true,
                      physics: const BouncingScrollPhysics(),
                      //padding: const EdgeInsets.all(20.0),
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 2,
                      childAspectRatio: 0.58,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/product-details');
                          },
                          child: const ProductBox(
                            image_adress: 'assets/images/mainDishStoreBg.jpg',
                            price: 60,
                            title: "Uber Burger3",
                            cafe_name: "Uber Restorant",
                            rev_count: 52,
                            stars: 4,
                            isMain: false,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/product-details');
                          },
                          child: const ProductBox(
                            image_adress: 'assets/images/mainDishStoreBg.jpg',
                            price: 60,
                            title: "Uber Burger3",
                            cafe_name: "Uber Restorant",
                            rev_count: 52,
                            stars: 4,
                            isMain: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
