import 'package:flutter/material.dart';
import 'package:yeaty/constants/colors.dart';
import '../../widgets/confirm_button.dart';
import '../../widgets/socialmedia_button.dart';

class LoginMain extends StatefulWidget {
  const LoginMain({Key? key}) : super(key: key);
  static const RouteName = '/login-main';

  @override
  State<LoginMain> createState() => _LoginMainState();
}

class _LoginMainState extends State<LoginMain> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    TextEditingController _nameController = TextEditingController();
    TextEditingController _sirnameController = TextEditingController();
    TextEditingController _usernameController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: deviceSize.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: deviceSize.height * 0.035),
                    Icon(
                      Icons.arrow_back,
                      size: deviceSize.width * 0.08,
                    ),
                    SizedBox(height: deviceSize.height * 0.035),
                    Text(
                      "Yeaty'e hoşgeldin",
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.06),
                    ),
                    SizedBox(height: deviceSize.height * 0.035),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Birkaç adımda kolayca kaydını tamamlayalım",
                          style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                        ),
                        Row(
                          children: [
                            Text(
                              "Zaten bir hesabın var mı?",
                              style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                            ),
                            SizedBox(width: deviceSize.width * 0.01),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/login-authenticated');
                              },
                              child: Text(
                                "Hemen giriş yap",
                                style: TextStyle(color: kMainToneRed, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: deviceSize.height * 0.035),
                    Text(
                      "Sosyal medya hesabın ile bağlan",
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.035),
                    ),
                    SizedBox(height: deviceSize.height * 0.015),
                    Row(
                      children: [
                        const SocialMediaButton(icon: Icon(Icons.android, color: kMainToneBlack), title: "Google ile devam et"),
                        SizedBox(width: deviceSize.width * 0.01),
                        const SocialMediaButton(icon: Icon(Icons.facebook, color: kMainToneBlack), title: "Facebook ile devam et"),
                      ],
                    ),
                    SizedBox(height: deviceSize.height * 0.045),
                    Text(
                      "Hesap oluştur",
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.04),
                    ),
                    SizedBox(height: deviceSize.height * 0.015),
                    Container(
                      padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                      decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                      child: TextField(
                        controller: _nameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Ad',
                            hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.02),
                    Container(
                      padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                      decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                      child: TextField(
                        controller: _sirnameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Soyad',
                            hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.02),
                    Container(
                      padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                      decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                      child: TextField(
                        controller: _usernameController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Kullanıcı Adı',
                            hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                      ),
                    ),
                  ],
                ),
              ),
              const ConfirmButton(title: "Devam et", route: '/login-details', isEnd: false),
            ],
          ),
        ),
      ),
    );
  }
}
