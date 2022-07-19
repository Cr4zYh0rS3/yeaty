import 'package:flutter/material.dart';
import 'package:yeaty/view/widgets/confirm_button.dart';

import '../../../constants/colors.dart';

class LoginAuthenticated extends StatelessWidget {
  const LoginAuthenticated({Key? key}) : super(key: key);
  static const RouteName = '/login-authenticated';

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    TextEditingController _usernameController = TextEditingController();

    TextEditingController _pwdController = TextEditingController();
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: deviceSize.width * 0.08,
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.035),
                    Text(
                      "Giriş yap",
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealBold', fontSize: deviceSize.width * 0.06),
                    ),
                    SizedBox(height: deviceSize.height * 0.035),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hemen hesabına giriş yap ve Yeaty ayrıcalıklarından faydalanmaya devam et",
                          style: TextStyle(color: kFoggyLightBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                        ),
                      ],
                    ),
                    SizedBox(height: deviceSize.height * 0.015),
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
                            hintText: 'Kullanıcı adı',
                            hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.01),
                    Container(
                      padding: EdgeInsets.fromLTRB(deviceSize.width * 0.02, 0, 0, 0),
                      decoration: BoxDecoration(color: kShadedDarkColorWhite, borderRadius: BorderRadius.circular(deviceSize.width * 0.02)),
                      child: TextField(
                        controller: _pwdController,
                        keyboardType: TextInputType.name,
                        style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035, decoration: TextDecoration.none),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Şifre',
                            hintStyle: TextStyle(fontSize: deviceSize.width * 0.035)),
                      ),
                    ),
                    SizedBox(height: deviceSize.height * 0.02),
                    Text(
                      "Şifremi unuttum",
                      style: TextStyle(color: kMainToneBlack, fontFamily: 'AirbnbCerealMedium', fontSize: deviceSize.width * 0.035),
                    ),
                  ],
                ),
              ),
              const ConfirmButton(title: "Giriş yap", route: '/home', isEnd: true),
            ],
          ),
        ),
      ),
    );
  }
}
