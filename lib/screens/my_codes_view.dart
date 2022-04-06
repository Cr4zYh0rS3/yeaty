import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:yeaty/constants/colors.dart';
import 'package:yeaty/widgets/red_button.dart';

class MyCodesView extends StatefulWidget {
  const MyCodesView({Key? key}) : super(key: key);

  @override
  State<MyCodesView> createState() => _MyCodesViewState();
}

class _MyCodesViewState extends State<MyCodesView> {
  List cafesList = List.generate(
          10, (index) => {"name": "$index. Cafe", "image": "$index. image"})
      .toList();

  var cafes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          const Text(
            "QR Kodlarım",
            style: TextStyle(
              color: kMainToneBlack,
              fontFamily: "AirbnbCerealBold",
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.qr_code_scanner_rounded),
            color: Colors.black,
            onPressed: () {},
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
                          Icons.qr_code_sharp,
                          color: kShadedDarkColorWhite,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "QR Kod ile geri ödeme alın",
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
                              "Şimdi QR Kod oluşturarak yetkiliye gösterin ve hesabın %10 kadarı geri bakiye olarak eklensin!",
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
                          text: "Şimdi oluştur",
                        ),
                      ],
                    ) /* add child content here */,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.5.h, right: 1.5.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "QR kodlarınızı kullanın",
                      style: TextStyle(
                          fontFamily: "AirbnbCerealBold", fontSize: 15.sp),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  const Text(
                    "Hesabınıza eklediğiniz QR Kodları görevliye göstererek kullanmaya hemen başlayın.",
                    style: TextStyle(fontFamily: "AirbnbCerealBold"),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: cafesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.red,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.location_on_outlined),
                                Text(cafesList[index]["name"]),
                              ],
                            ),
                            Align(child: Text(cafesList[index]["image"])),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
