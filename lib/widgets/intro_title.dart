import 'package:flutter/material.dart';

import '../constants/colors.dart';

class IntroTitle extends StatelessWidget {
  final String mainTitle;
  final String description;
  final String direction;
  const IntroTitle({Key? key, required this.mainTitle, required this.description, required this.direction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: deviceSize.width * 0.04, left: deviceSize.width * 0.04, top: deviceSize.width * 0.02, bottom: deviceSize.height * 0.02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mainTitle,
                style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', fontSize: deviceSize.width * 0.048, color: kMainToneBlack),
              ),
              Text(
                direction,
                style: TextStyle(fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.028, color: kMainToneBlack),
              ),
            ],
          ),
          SizedBox(height: deviceSize.height * 0.016),
          Text(
            description,
            style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
          ),
        ],
      ),
    );
  }
}
