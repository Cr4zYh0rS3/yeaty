import 'package:flutter/material.dart';
import 'package:yeaty/widgets/default_topbar.dart';
import 'package:yeaty/widgets/intro_title.dart';
import 'package:yeaty/widgets/opportunity_banner.dart';
import 'package:yeaty/widgets/opportunity_box.dart';

import '../constants/colors.dart';
import '../widgets/product_box.dart';

class Opportunity extends StatefulWidget {
  const Opportunity({Key? key}) : super(key: key);

  @override
  State<Opportunity> createState() => _OpportunityState();
}

class _OpportunityState extends State<Opportunity> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: const [
          Text(
            "Fırsat ve Ürünler",
            style: TextStyle(
              color: kMainToneBlack,
              fontFamily: "AirbnbCerealBold",
            ),
          ),
        ],
      )),
      body: Column(
        children: [
          //DefaultTopbar(title: "Fırsat ve ürünler"),
          Container(
            width: deviceSize.width,
            //FIXME height doğru değil
            height: deviceSize.height - kBottomNavigationBarHeight - AppBar().preferredSize.height - 24,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  OpportunityBanner(),
                  SizedBox(height: deviceSize.height * 0.02),
                  IntroTitle(
                      mainTitle: "Yeaty özel kampanyaları",
                      description: "Tek tıkla oluşturacağınız QR Kodu görevliye göstererek Yeaty avantajlarından faydalanın. İşste bu kadar basit !",
                      direction_name: "Tümünü gör",
                      direction_path: 'see-more'),
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          OpportunityBox(image_adress: 'assets/images/cafeImage6.jpg', desc: "Demo description", title: "title", cafe_name: "cafe_name", rev_count: 58, stars: 5),
                          OpportunityBox(
                              image_adress: 'assets/images/cafeImage6.jpg', desc: "Öğlen 12 den önce hesap tutarında %15 indirim", title: "title", cafe_name: "cafe_name", rev_count: 58, stars: 5),
                          OpportunityBox(image_adress: 'assets/images/cafeImage6.jpg', desc: "description of top", title: "title", cafe_name: "cafe_name", rev_count: 58, stars: 5),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.02),
                  IntroTitle(
                      mainTitle: "Yeaty puanlar ile ödeyin",
                      description: "Seçili ürünleri anlaşmalı restoran ve kafelerimizde topladığınız Yeaty puanlar ile ödeyin.",
                      direction_name: "Tümünü gör",
                      direction_path: 'see-more'),
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.04, bottom: deviceSize.height * 0.012),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                          ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                          ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
