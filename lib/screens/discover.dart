import 'package:flutter/material.dart';
import 'package:yeaty/widgets/blog_box.dart';
import 'package:yeaty/widgets/intro_title.dart';
import 'package:yeaty/widgets/discover_topbar.dart';
import 'package:yeaty/widgets/discoveronmap_banner.dart';
import 'package:yeaty/widgets/place_box.dart';
import 'package:yeaty/widgets/product_box.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const DiscoverTopbar(),
        Container(
          width: deviceSize.width,
          height: deviceSize.height - kBottomNavigationBarHeight - deviceSize.height * 0.14,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                IntroTitle(mainTitle: "Çevrenizde Popüler", description: "Birçok Yeaty kullanıcısının tercih ettiği, eşsiz deneyimler sunan kafe ve restoranları keşfedin", direction: "Tümünü gör"),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.04),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/cafe-detail');
                            },
                            child: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                            ),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: deviceSize.height * 0.02),
                IntroTitle(mainTitle: "Yeaty puanlar ile ödeyin", description: "Seçili ürünleri anlaşmalı restoran ve kafelerimizde topladığınız Yeaty puanlar ile ödeyin.", direction: "Tümünü gör"),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.04),
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
                SizedBox(height: deviceSize.height * 0.02),
                IntroTitle(mainTitle: "Bloglara göz atın", description: "Lokal mekanlardan benzersiz deneyimlerin sunulduğu Yeaty Blog'u keşfedin", direction: "Bloglara git"),
                BlogBox(
                  imageAdress: 'assets/images/campaignBgCafe.jpg',
                  title: "Kadıköyün ara sokaklarında saklı kalmış bir hazine, sıcak samimi keyifli bir eğlence",
                  description: "Lorem Ipsum bla bla this is description but i dont know what to write but i dont want to write lorem ipsum either pleeease help.",
                  author_image_path: 'assets/images/randomPerson.jpg',
                  author_name: "Semih Mert Utkan",
                  author_title: "Software Engineer",
                ),
                BlogBox(
                  imageAdress: 'assets/images/campaignBgCafe.jpg',
                  title: "Kadıköyün ara sokaklarında saklı kalmış bir hazine, sıcak samimi keyifli bir eğlence",
                  description: "Lorem Ipsum bla bla this is description but i dont know what to write but i dont want to write lorem ipsum either pleeease help.",
                  author_image_path: 'assets/images/randomPerson.jpg',
                  author_name: "Semih Mert Utkan",
                  author_title: "Software Engineer",
                ),
                DiscoverOnMapBanner(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
