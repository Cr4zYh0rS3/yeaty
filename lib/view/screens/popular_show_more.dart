import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../widgets/place_box.dart';
import '../widgets/search_bar.dart';

class PopularShowMore extends StatefulWidget {
  const PopularShowMore({Key? key}) : super(key: key);
  static const RouteName = '/popular-show-more';

  @override
  State<PopularShowMore> createState() => _PopularShowMoreState();
}

class _PopularShowMoreState extends State<PopularShowMore> {
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
                      "Yeaty ile anlaşmalı mekanlar",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.043, color: kMainToneBlack),
                    ),
                  ),
                  Padding(
                      //FIXME used padding to center fix it
                      padding: EdgeInsets.only(left: deviceSize.width * 0.032, top: deviceSize.height * 0.01),
                      child: GridView.builder(
                          shrinkWrap: true,
                          primary: true,
                          physics: BouncingScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10.0,
                            childAspectRatio: 0.58,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: false);
                          })

                      /*GridView.count(
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
                    ),*/

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
