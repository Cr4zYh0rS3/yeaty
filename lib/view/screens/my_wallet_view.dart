import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../constants/colors.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  late String images = "turkishCoffee.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: const [
          Text(
            "Cüzdanım",
            style: TextStyle(
              color: kMainToneBlack,
              fontFamily: "AirbnbCerealBold",
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Text(
              "41,00",
              style: TextStyle(fontSize: 35.sp, fontFamily: "AirbnbCerealBold"),
            ),
            const Text(
              "yeaty bakiyem",
              style: TextStyle(fontFamily: "AirbnbCerealLight"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.5.h, left: 1.5.h, right: 1.5.h),
              child: Row(
                children: [
                  Text(
                    "Geçmiş Aktivitem",
                    style: TextStyle(
                        fontFamily: "AirbnbCerealBold", fontSize: 14.sp),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    elevation: 0,
                    color: kLightColorWhite,
                    child: Row(
                      children: [
                        SizedBox(
                            height: 10.h,
                            width: 14.h,
                            child: Image.asset("assets/images/$images")),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.h),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Mozaik Pasta",
                                      style: TextStyle(
                                          fontFamily: "AirbnbCerealMedium"),
                                    ),
                                    Text(
                                      "/Cafe'de Keyff",
                                      style: TextStyle(
                                          fontFamily: "AirbnbCerealLight"),
                                    ),
                                  ],
                                )),
                            const Text(
                              "Yeaty puanlar ile ödendi",
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 1.h),
                              child: const Text(
                                "4 gün önce",
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: const Text(
                            "-18",
                            style: TextStyle(fontFamily: "AirbnbCerealMedium"),
                          ),
                        ),
                      ],
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
