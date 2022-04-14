import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';
import '../widgets/red_button.dart';

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
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 30.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/cafeImage6.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRRect(
                // make sure we apply clip it properly
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(0.35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.groups_outlined,
                          size: 30,
                          color: kShadedDarkColorWhite,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Davet et,kazan!",
                          style: TextStyle(
                              fontFamily: "AirbnbCerealBlack",
                              fontSize: 13.sp,
                              color: kShadedDarkColorWhite),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 3.h, right: 3.h),
                            child: const Text(
                              "Şimdi Yeaty'e arkadaşlarını davet eden üyelerimiz, İlk alışverişte 10 TL ekstra Yeaty bakiyesi kazanıyor.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "AirbnbCerealMedium",
                                  color: kShadedDarkColorWhite),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        RedButton(
                          height: 5.5.h,
                          width: 30.w,
                          text: "Davet gönder",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
              padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
              child: Row(
                children: [
                  Text(
                    "Geçmiş Aktivitem",
                    style: TextStyle(
                        fontFamily: "AirbnbCerealBold", fontSize: 14.sp),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Tümünü gör",
                      style: TextStyle(
                          color: Colors.black, fontFamily: "AirbnbCerealLight"),
                    ),
                  ),
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
