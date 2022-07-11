import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants/colors.dart';

class PlaceBox extends StatelessWidget {
  final String image_adress;

  final String title;
  final String cafe_name;
  final int rev_count;
  final int stars;

  final bool isMain;
  const PlaceBox({Key? key, required this.image_adress, required this.title, required this.cafe_name, required this.rev_count, required this.stars, required this.isMain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: isMain == true ? deviceSize.width * 0.5 : deviceSize.width * 0.45,
          height: deviceSize.width * 0.65,
          margin: EdgeInsets.only(right: deviceSize.width * 0.03),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
            child: Image(
              image: AssetImage(image_adress),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: deviceSize.height * 0.01, left: deviceSize.width * 0.01),
          child: Text(
            title,
            style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: deviceSize.width * 0.01),
          child: Text(
            cafe_name,
            style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.03, color: kFoggyLightBlack),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: kMainToneRed,
              size: deviceSize.width * 0.03,
            ),
            Icon(
              Icons.star,
              color: kMainToneRed,
              size: deviceSize.width * 0.03,
            ),
            Icon(
              Icons.star,
              color: kMainToneRed,
              size: deviceSize.width * 0.03,
            ),
            Icon(
              Icons.star,
              color: kMainToneRed,
              size: deviceSize.width * 0.03,
            ),
            Icon(
              Icons.star,
              color: kMainToneRed,
              size: deviceSize.width * 0.03,
            ),
            SizedBox(width: deviceSize.width * 0.01),
            Text(
              "(${rev_count.toString()} reviews)",
              style: TextStyle(fontFamily: 'AirbnbCerealLight', fontSize: deviceSize.width * 0.022),
            )
          ],
        ),
      ],
    );
  }
}
