import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../widgets/intro_title.dart';
import '../widgets/opportunity_banner.dart';
import '../widgets/opportunity_box.dart';
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
          SizedBox(
            width: deviceSize.width,
            //FIXME height doğru değil
            height: deviceSize.height -
                kBottomNavigationBarHeight -
                AppBar().preferredSize.height -
                24,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const OpportunityBanner(),
                  SizedBox(height: deviceSize.height * 0.02),
                  const IntroTitle(
                      mainTitle: "Yeaty özel kampanyaları",
                      description:
                          "Tek tıkla oluşturacağınız QR Kodu görevliye göstererek Yeaty avantajlarından faydalanın. İşste bu kadar basit !",
                      direction_name: "Tümünü gör",
                      direction_path: 'see-more'),
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.04),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      child: Row(
                        children: const [
                          OpportunityBox(
                              image_adress: 'assets/images/cafeImage6.jpg',
                              desc: "Demo description",
                              title: "title",
                              cafe_name: "cafe_name",
                              rev_count: 58,
                              stars: 5),
                          OpportunityBox(
                              image_adress: 'assets/images/cafeImage6.jpg',
                              desc:
                                  "Öğlen 12 den önce hesap tutarında %15 indirim",
                              title: "title",
                              cafe_name: "cafe_name",
                              rev_count: 58,
                              stars: 5),
                          OpportunityBox(
                              image_adress: 'assets/images/cafeImage6.jpg',
                              desc: "description of top",
                              title: "title",
                              cafe_name: "cafe_name",
                              rev_count: 58,
                              stars: 5),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: deviceSize.height * 0.02),
                  const IntroTitle(
                      mainTitle: "Yeaty puanlar ile ödeyin",
                      description:
                          "Seçili ürünleri anlaşmalı restoran ve kafelerimizde topladığınız Yeaty puanlar ile ödeyin.",
                      direction_name: "Tümünü gör",
                      direction_path: '/product-show-more'),
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.04),
                    child: SizedBox(
                      width: deviceSize.width,
                      height: deviceSize.width * 0.75,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/product-details');
                            },
                            child: const ProductBox(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
