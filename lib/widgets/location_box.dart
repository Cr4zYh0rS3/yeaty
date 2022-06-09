import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LocationBox extends StatelessWidget {
  final String title;
  final int placetimes;
  final String imagePath;
  const LocationBox({Key? key, required this.title, required this.placetimes, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: deviceSize.width * 0.018),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(deviceSize.width * 0.04),
        child: Container(
            width: deviceSize.width * 0.47,
            height: deviceSize.width * 0.34,
            child: Stack(
              children: [
                Image(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  width: deviceSize.width * 0.47,
                  height: deviceSize.width * 0.34,
                ),
                //Second Layer
                Container(
                  color: Colors.black.withOpacity(0.3),
                  width: deviceSize.width * 0.92,
                  height: deviceSize.height * 0.195,
                ),
                //Third layer
                Padding(
                  padding: EdgeInsets.only(left: deviceSize.width * 0.02, bottom: deviceSize.width * 0.02),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${placetimes.toString()} mekanlar",
                        style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealLight', fontSize: deviceSize.width * 0.03),
                      ),
                      Text(
                        title,
                        style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.05),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
