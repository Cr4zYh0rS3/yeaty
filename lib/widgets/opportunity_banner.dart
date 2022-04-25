import 'package:flutter/material.dart';

import '../constants/colors.dart';

class OpportunityBanner extends StatelessWidget {
  const OpportunityBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: deviceSize.height * 0.02),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
        child: Container(
          width: deviceSize.width * 0.92,
          height: deviceSize.height * 0.195,
          child: Stack(
            children: [
              Container(
                width: deviceSize.width * 0.92,
                height: deviceSize.height * 0.195,
                child: Image(
                  image: AssetImage('assets/images/turkKahvesi.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
                width: deviceSize.width * 0.92,
                height: deviceSize.height * 0.195,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(deviceSize.width * 0.046, deviceSize.width * 0.06, deviceSize.width * 0.046, 0),
                child: Column(
                  children: [
                    Text(
                      "Yeatyden Türk kahvesi ikramı",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kLightColorWhite, fontSize: deviceSize.width * 0.038),
                    ),
                    SizedBox(height: deviceSize.height * 0.015),
                    Text(
                      "9 kafede bugüne özel 1 kahve alana 1 kahve de bizden",
                      style: TextStyle(fontFamily: 'AirbnbCerealMedium', color: kShadedDarkColorWhite, fontSize: deviceSize.width * 0.03),
                    ),
                    SizedBox(height: deviceSize.height * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
                        color: kMainToneRed,
                      ),
                      width: deviceSize.width * 0.25,
                      height: deviceSize.height * 0.05,
                      child: Center(
                          child: Text(
                        "Fırsatı Gör",
                        style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.032),
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
