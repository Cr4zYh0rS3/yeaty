import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class OpportunityBox extends StatelessWidget {
  final String image_adress;
  final String desc;
  final String title;
  final String cafe_name;
  final int rev_count;
  final int stars;
  const OpportunityBox({
    Key? key,
    required this.image_adress,
    required this.desc,
    required this.title,
    required this.cafe_name,
    required this.rev_count,
    required this.stars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: deviceSize.width * 0.55,
          height: deviceSize.height * 0.28,
          margin: EdgeInsets.only(right: deviceSize.width * 0.03),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
            child: Stack(
              children: [
                //First Layer
                Container(
                  width: deviceSize.width * 0.55,
                  height: deviceSize.height * 0.28,
                  child: Image(
                    image: AssetImage(image_adress),
                    fit: BoxFit.cover,
                  ),
                ),
                //Second Layer
                Container(
                  color: Colors.black.withOpacity(0.4),
                ),
                //Third Layer
                Center(
                  child: Text(
                    desc,
                    style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
