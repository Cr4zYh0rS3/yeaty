import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:yeaty/constants/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);
  static const RouteName = '/product-details';

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: deviceSize.width,
            height: deviceSize.height * 0.11,
            color: kShadedDarkColorWhite,
            child: SafeArea(
                child: Row(
              children: [
                SizedBox(width: deviceSize.width * 0.06),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: kMainToneBlack,
                    size: deviceSize.width * 0.07,
                  ),
                ),
                SizedBox(width: deviceSize.width * 0.2),
                Text(
                  "Ürün detayları",
                  style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.04),
                )
              ],
            )),
          ),
          Container(
            width: deviceSize.width,
            height: deviceSize.height * 0.3,
            child: Image(
              image: AssetImage("assets/images/mainDishStoreBg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: deviceSize.width * 0.94,
            height: deviceSize.height * 0.48,
            color: kLightColorWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: deviceSize.width * 0.03),
                Text(
                  "Uber Burger",
                  style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.055),
                ),
                SizedBox(height: deviceSize.width * 0.01),
                Text(
                  "Lorem ipsum dolor sit amet sed Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.036),
                ),
                Text(
                  "60₺",
                  style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.055),
                ),
              ],
            ),
          ),
          Container(
            width: deviceSize.width,
            height: deviceSize.height * 0.11,
            color: kShadedDarkColorWhite,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: QrImage(data: "thisistestdatawhichisuselessouhrousfousgsfgohfgohsfgıoghfjgjbsvbjwuwugfhfvvjbarhbSJoohfuıgvbasdvuhuoasgdfh54da6f8had8g4na8dg4nadgna8"),
                      actions: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Bitti",
                            style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                          ),
                        ),
                      ],
                      actionsPadding: EdgeInsets.only(right: deviceSize.width * 0.06, bottom: deviceSize.width * 0.03),
                      contentPadding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, deviceSize.width * 0.02, deviceSize.width * 0.02, deviceSize.width * 0.01),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kMainToneRed,
                    borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
                  ),
                  width: deviceSize.width * 0.7,
                  height: deviceSize.width * 0.14,
                  child: Center(
                    child: Text(
                      "Şimdi al",
                      style: TextStyle(color: kLightColorWhite, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.04),
                    ),
                  ),
                ),
              ),
              SizedBox(width: deviceSize.width * 0.03),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (isSaved == false) {
                      isSaved = true;
                    } else {
                      isSaved = false;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: kMainToneRed,
                    borderRadius: BorderRadius.circular(deviceSize.width * 0.02),
                  ),
                  width: deviceSize.width * 0.18,
                  height: deviceSize.width * 0.14,
                  child: Center(
                    child: Icon(
                      isSaved == true ? Icons.bookmark : Icons.bookmark_border,
                      color: kLightColorWhite,
                      size: deviceSize.width * 0.08,
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
