import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../widgets/carousel_image.dart';
import '../widgets/comment_card.dart';
import '../widgets/intro_title.dart';
import '../widgets/other_features.dart';
import '../widgets/product_box.dart';

class CafeDetail extends StatefulWidget {
  const CafeDetail({Key? key}) : super(key: key);
  static const RouteName = '/cafe-detail';

  @override
  State<CafeDetail> createState() => _CafeDetailState();
}

class _CafeDetailState extends State<CafeDetail> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CarouselImage(imagePath: [
              'assets/images/coldDrinksStoreBg.jpg',
              'assets/images/mainDishStoreBg.jpg',
              'assets/images/cafeImage6.jpg',
            ]),
            Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: deviceSize.width * 0.04, top: deviceSize.height * 0.015),
                child: Text("De'la Carte Cafe", style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', fontSize: deviceSize.width * 0.07, color: kMainToneBlack))),
            Container(
              width: deviceSize.width * 0.95,
              margin: EdgeInsets.only(top: deviceSize.height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: kMainToneRed,
                    size: deviceSize.width * 0.05,
                  ),
                  Text(
                    "3.7",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                  ),
                  Text(
                    " (58 reviews)",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                  ),
                  SizedBox(width: deviceSize.width * 0.08),
                  Icon(
                    Icons.location_on_outlined,
                    color: kMainToneRed,
                    size: deviceSize.width * 0.05,
                  ),
                  Column(
                    children: [
                      Text(
                        "İstanbul",
                        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                      ),
                      Text(
                        "Bahçelievler",
                        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032, color: kMainToneBlack),
                      ),
                    ],
                  ),
                  SizedBox(width: deviceSize.width * 0.08),
                  Text(
                    "Şu anda açık",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03, color: kMainToneGreen),
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height * 0.03),
            Container(
              margin: EdgeInsets.only(left: deviceSize.width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mutfak Türü",
                        style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.042, color: kMainToneBlack),
                      ),
                      Text(
                        "Cafe",
                        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03, color: kFoggyLightBlack),
                      ),
                    ],
                  ),
                  SizedBox(width: deviceSize.width * 0.08),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ortalama tutar",
                        style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.042, color: kMainToneBlack),
                      ),
                      Text(
                        "35₺ iki kişi için (ortalama)",
                        style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03, color: kFoggyLightBlack),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: deviceSize.height * 0.06),
            const IntroTitle(
                mainTitle: "Yeaty puanlar ile ödeyin",
                description: "De'la Carte Cafe mekanında seçili ürünleri Yeaty puanlarınız ile ödeyin. Ardından oluşacak QR Kodu mekanındaki görevliye göstermeniz yeterli olacaktır.",
                direction_name: "Tümünü gör",
                direction_path: 'see-more'),
            Padding(
              padding: EdgeInsets.only(left: deviceSize.width * 0.04),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: const [
                    ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                    ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                    ProductBox(image_adress: 'assets/images/mainDishStoreBg.jpg', price: 60, title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                  ],
                ),
              ),
            ),
            SizedBox(height: deviceSize.height * 0.03),
            const OtherFeatures(),
            // Comment section
            SizedBox(height: deviceSize.height * 0.03),
            SizedBox(
              width: deviceSize.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kullanıcı Yorumları",
                    style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', color: kMainToneBlack, fontSize: deviceSize.width * 0.045),
                  ),
                  SizedBox(height: deviceSize.height * 0.02),
                  const CommentCard(),
                  const CommentCard(),
                  const CommentCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
