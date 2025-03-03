import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class DiscoverOnMapBanner extends StatelessWidget {
  const DiscoverOnMapBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
      child: SizedBox(
        width: deviceSize.width * 0.92,
        height: deviceSize.height * 0.195,
        child: Stack(
          children: [
            SizedBox(
              width: deviceSize.width * 0.92,
              height: deviceSize.height * 0.195,
              child: const Image(
                image: AssetImage('assets/images/LocationBg.png'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
              width: deviceSize.width * 0.92,
              height: deviceSize.height * 0.195,
            ),
            SizedBox(
              width: deviceSize.width * 0.92,
              height: deviceSize.height * 0.195,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Haritada Keşfet",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kLightColorWhite, fontSize: deviceSize.width * 0.038),
                  ),
                  SizedBox(height: deviceSize.height * 0.015),
                  Text(
                    "Yeaty ile anlaşmalı mekanları harita üzerinde keşfe çık",
                    style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kShadedDarkColorWhite, fontSize: deviceSize.width * 0.03),
                  ),
                  SizedBox(height: deviceSize.height * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/showonmap');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
                        color: kLightColorWhite,
                      ),
                      width: deviceSize.width * 0.25,
                      height: deviceSize.height * 0.05,
                      child: Center(
                          child: Text(
                        "Şimdi gözat",
                        style: TextStyle(color: kLightToneRed, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032),
                      )),
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
