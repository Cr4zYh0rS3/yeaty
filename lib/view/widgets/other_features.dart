import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';

class OtherFeatures extends StatelessWidget {
  const OtherFeatures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      width: deviceSize.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Diğer Özellikler",
            style: TextStyle(fontFamily: 'AirbnbCerealExtraBold', color: kMainToneBlack, fontSize: deviceSize.width * 0.045),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceSize.width * 0.35,
                child: Row(
                  children: [
                    const Icon(Icons.verified_outlined, color: kMainToneGreen),
                    Flexible(
                        child: Text(
                      "Açık  alan",
                      overflow: TextOverflow.fade,
                      style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                    ))
                  ],
                ),
              ),
              SizedBox(width: deviceSize.width * 0.2),
              SizedBox(
                width: deviceSize.width * 0.35,
                child: Row(
                  children: [
                    const Icon(Icons.verified_outlined, color: kMainToneGreen),
                    Flexible(
                      child: Text(
                        "Vegan seçenekler",
                        overflow: TextOverflow.fade,
                        style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: deviceSize.height * 0.015),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceSize.width * 0.35,
                child: Row(
                  children: [
                    const Icon(Icons.verified_outlined, color: kMainToneGreen),
                    Flexible(
                      child: Text(
                        "WiFi",
                        overflow: TextOverflow.fade,
                        style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: deviceSize.width * 0.2),
              SizedBox(
                width: deviceSize.width * 0.35,
                child: Row( 
                  children: [
                    const Icon(Icons.verified_outlined, color: kMainToneGreen),
                    Flexible(
                      child: Text(
                        "Sigara Alanı",
                        overflow: TextOverflow.fade,
                        style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
