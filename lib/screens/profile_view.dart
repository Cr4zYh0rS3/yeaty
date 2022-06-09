import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            const Text(
              "Hesabım",
              style: TextStyle(
                color: kMainToneBlack,
                fontFamily: "AirbnbCerealMedium",
              ),
            ),
            Spacer(),
            IconButton(
              icon: const Icon(Icons.notifications_outlined),
              color: kMainToneBlack,
              onPressed: () {},
            ),
          ],
        )),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 15.h,
              child: Card(
                elevation: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                      width: 20.w,
                      child: const CircleAvatar(backgroundImage: AssetImage('assets/images/randomPerson.jpg')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CrazyHorse",
                            style: TextStyle(fontSize: 13.sp, color: kMainToneBlack, fontFamily: "AirbnbCerealBold"),
                          ),
                          GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Profili gör",
                                style: TextStyle(color: Colors.black, fontFamily: "AirbnbCerealBook"),
                              ))
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "16",
                          style: TextStyle(fontSize: 15.sp, color: kMainToneBlack, fontFamily: "AirbnbCerealBold"),
                        ),
                        const Text("Ziyaret")
                      ],
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "8",
                            style: TextStyle(fontSize: 15.sp, color: kMainToneBlack, fontFamily: "AirbnbCerealBold"),
                          ),
                          const Text("Puanlama")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 1.h, right: 1.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "İşletmeni Yeaty'e taşı",
                        style: TextStyle(fontFamily: "AirbnbCerealExtraBold", fontSize: 15.sp, color: kMainToneBlack),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.0, right: 3.h, top: 5.h),
                        child: Text("Yeaty'e işletmeni nasıl kaydedip kazancını arttırabileceğin hakkında bilgi sahibi ol"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Bilgilerimi düzenle"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Favori mekanlarım"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Bildirimlerim"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Favori ürünlerim"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.coffee_outlined))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Kullanıcı ve gizlilik sözleşmesi"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.description_outlined))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Yeaty işletme kaydı"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.storefront_outlined))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Yardım al"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.help_outline))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Bizi değerlendir"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.star_outline))],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                  child: Card(
                    child: Row(
                      children: [Text("Çıkış yap"), Spacer(), IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined))],
                    ),
                  ),
                ),
              ],
            )
          ]),
        ));
  }
}
