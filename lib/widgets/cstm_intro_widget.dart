import 'package:flutter/material.dart';
import 'package:yeaty/widgets/intro_title.dart';
import 'package:yeaty/widgets/place_box.dart';

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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/cafe-detail');
                    },
                    child: widget
                    //PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
                    ),
                widget,
                widget
                //PlaceBox(image_adress: 'assets/images/yeatyAppLoginBg.jpg', title: "Uber Burger", cafe_name: "Uber Restorant", rev_count: 52, stars: 4, isMain: true),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
