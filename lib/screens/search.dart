import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';
import 'package:yeaty/widgets/intro_title.dart';
import 'package:yeaty/widgets/location_box.dart';
import 'package:yeaty/widgets/place_box.dart';
import 'package:yeaty/widgets/search_bar.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  static const RouteName = '/search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            Container(
              width: deviceSize.width,
              height: deviceSize.height - deviceSize.height * 0.18,
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.05, bottom: deviceSize.width * 0.03, top: deviceSize.width * 0.01),
                    child: Text(
                      "Bugün nerdesin ?",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.05, color: kMainToneBlack),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        SizedBox(width: deviceSize.width * 0.05),
                        Container(
                            width: deviceSize.width * 0.35,
                            height: deviceSize.width * 0.34,
                            decoration: BoxDecoration(
                              border: Border.all(color: kShadedDarkColorWhite, width: deviceSize.width * 0.005),
                              borderRadius: BorderRadius.circular(deviceSize.width * 0.04),
                            ),
                            child: Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.pin_drop_rounded,
                                  size: deviceSize.width * 0.2,
                                  color: kShadedDarkColorWhite,
                                ),
                                Text(
                                  "Yakınımda Ara",
                                  style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.04),
                                ),
                              ],
                            ))),
                        SizedBox(width: deviceSize.width * 0.018),
                        LocationBox(title: "Bakırköy", placetimes: 5, imagePath: "assets/images/bakirkoy.jpg"),
                        LocationBox(title: "Beşiktaş", placetimes: 16, imagePath: "assets/images/beso.jpg"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.05, bottom: deviceSize.width * 0.03, top: deviceSize.width * 0.07),
                    child: Text(
                      "Önerilen mekanlar",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.05, color: kMainToneBlack),
                    ),
                  ),
                  Padding(
                    //FIXME used padding to center fix it
                    padding: EdgeInsets.only(left: deviceSize.width * 0.032, top: deviceSize.height * 0.01),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: true,
                      physics: BouncingScrollPhysics(),
                      //padding: const EdgeInsets.all(20.0),
                      crossAxisSpacing: 10.0,
                      crossAxisCount: 2,
                      childAspectRatio: 0.58,
                      children: <Widget>[
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
                        PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false),
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
