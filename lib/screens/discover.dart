import 'package:flutter/material.dart';
import 'package:yeaty/widgets/blog_box.dart';
import 'package:yeaty/widgets/intro_title.dart';
import 'package:yeaty/widgets/discoveronmap_banner.dart';
import 'package:yeaty/widgets/place_box.dart';
import 'package:yeaty/widgets/product_box.dart';
import '../constants/colors.dart';
import '../widgets/cstm_intro_widget.dart';
import '../widgets/topbar_box.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({Key? key}) : super(key: key);

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {
  int currentindex = 1;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return Column(
      children: [
        //DiscoverTopbar(),
        Container(
          width: deviceSize.width,
          height: deviceSize.height * 0.16,
          color: kShadedDarkColorWhite,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.width * 0.02, right: deviceSize.width * 0.04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Keşfet",
                        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.045, color: kMainToneBlack),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/search');
                          },
                          child: Icon(Icons.search, color: kMainToneBlack)),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.width * 0.04),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 1;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Size Özel",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 2;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Kahve",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 3;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Akşam Yemeği",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 4;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Kahvaltı",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 5;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Tatlı",
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentindex = 6;
                            });
                          },
                          child: TopbarBox(
                            boxname: "Açık Hava",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: deviceSize.width,
          height: deviceSize.height - kBottomNavigationBarHeight - deviceSize.height * 0.16,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                if (currentindex == 1) ...[
                  CustomIntroWidget(
                    
                    maintitle: "Çevrenizde Popüler",
                    description: "Birçok yeaty kullanıcısının tercih ettiği, eşsiz deneyimler sunan kafe ve restoranları keşfedin",
                    direction_name: 'Tümünü gör',
                    direction_path: '/popular-show-more',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                if (currentindex == 2) ...[
                  CustomIntroWidget(
                    maintitle: "En Popüler Kahveciler",
                    description: "Bir kahve molası vererek günün yorgunluğundan ve stresinden kurtulun. Yeaty deki kahve mekanlarını keşfedin",
                    direction_name: 'Tümünü gör',
                    direction_path: '/nw',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Cafe", cafe_name: "Uber Cafe'", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                if (currentindex == 3) ...[
                  CustomIntroWidget(
                    maintitle: "Yemeği nerde yesek?",
                    description: "Yeaty kullanıcılarına özel fırsatlar ile keyifli bir yemeğe ne dersiniz",
                    direction_name: 'Tümünü gör',
                    direction_path: '/nw',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                if (currentindex == 4) ...[
                  CustomIntroWidget(
                    maintitle: "Kahvaltı",
                    description: "Birbirinden güzel kahvaltı mekanlarında yeaty ile güne güzel bir başlangıç yapın",
                    direction_name: 'Tümünü gör',
                    direction_path: '/nw',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Sortie Restorant", cafe_name: "Sortie Restorant", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                if (currentindex == 5) ...[
                  CustomIntroWidget(
                    maintitle: "Tatlı diyince akla gelenler",
                    description: "Birbirinden güzel tatlıcılar ile gününüze neşe katın. Yeaty fırsatlarını keşfedin",
                    direction_name: 'Tümünü gör',
                    direction_path: '/nw',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "De'la Carte Cafe", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                if (currentindex == 6) ...[
                  CustomIntroWidget(
                    maintitle: "Açık Hava Mekanları",
                    description: "Şehrin keşmekeşinden kurtulup rahat bir nefes alırken Yeaty fırsatlarının tadını çıkarın",
                    direction_name: 'Tümünü gör',
                    direction_path: '/nw',
                    widget: PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "De'la Carte Cafe", cafe_name: "Bakırköy", rev_count: 52, stars: 4, isMain: true),
                  ),
                ],
                SizedBox(height: deviceSize.height * 0.02),
                IntroTitle(
                    mainTitle: "Yeaty puanlar ile ödeyin",
                    description: "Seçili ürünleri anlaşmalı restoran ve kafelerimizde topladığınız Yeaty puanlar ile ödeyin.",
                    direction_name: "Tümünü gör",
                    direction_path: 'show_more'),
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
                IntroTitle(
                    mainTitle: "Bloglara göz atın",
                    description: "Lokal mekanlardan benzersiz deneyimlerin sunulduğu Yeaty Blog'u keşfedin",
                    direction_name: "Bloglara git",
                    direction_path: 'see-more'),
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
