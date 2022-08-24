import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:properti1/pages/markom/markom_page.dart';
import 'package:properti1/pages/sales/sales_page.dart';
import 'package:properti1/services/api.dart';
import 'package:properti1/thema.dart';
import 'package:http/http.dart' as http;
import 'package:properti1/widgets/button_red.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

enum LoginStatus {
  notSignIn,
  signInSales,
  signInMarkom,
}

class _SignInPageState extends State<SignInPage> {
  LoginStatus _loginStatus = LoginStatus.notSignIn;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var isLoading = false;

  handleSignIn() async {
    setState(() {
      isLoading = true;
    });
    final response = await http.post(Uri.parse(BaseUrl.signIn), body: {
      'username': usernameController.text,
      'password': passwordController.text,
    });
    if (response.statusCode == 200) {
      setState(() {
        isLoading = false;
      });
      final data = jsonDecode(response.body);
      print(data);
      int value = data['value'];
      String? message = data['message'];
      String? idUser = data['id_user'];
      String? username = data['username'];
      String? name_user = data['nama_user'];
      String? level = data['level'];
      String? active = data['active'];
      String? createDate = data['created'];
      String? updateDate = data['updateDate'];
      String? id_markom = data['id_markom'];
      String? images = data['image'];
      String? token = data['token'];
      if (value == 1) {
        print(message);
        if (level == "1") {
          setState(() {
            _loginStatus = LoginStatus.signInSales;
            save(value, idUser!, username!, name_user!, level!, active!,
                createDate!, updateDate!, id_markom!, images!, token!);
          });
        } else if (level == "2") {
          setState(() {
            _loginStatus = LoginStatus.signInMarkom;
            save(value, idUser!, username!, name_user!, level!, active!,
                createDate!, updateDate!, id_markom!, images!, token!);
          });
        }
      } else {
        print(message);
      }
    }
  }

  save(
    int value,
    String idUser,
    String username,
    String name_user,
    String level,
    String active,
    String createDate,
    String id_markom,
    String updateDate,
    String images,
    String token,
  ) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setInt("value", value);
      pref.setString("idUser", idUser);
      pref.setString("username", username);
      pref.setString("name_user", name_user);
      pref.setString("level", level);
      pref.setString("active", active);
      pref.setString("createDate", createDate);
      pref.setString("updateDate", updateDate);
      pref.setString("idMarkom", id_markom);
      pref.setString("images", images);
      pref.setString("token", token);
      pref.commit();
    });
  }

  var value;
  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    value = pref.getString("level");
    setState(() {
      _loginStatus = value == "1"
          ? LoginStatus.signInSales
          : _loginStatus =
              value == "2" ? LoginStatus.signInMarkom : LoginStatus.notSignIn;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPref();
  }

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: kRedColor,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 12),
            Text(
              "You Logo",
              style: darkLightTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameTextField() {
      return Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: TextFormField(
          style: darkLightTextStyle,
          controller: usernameController,
          decoration: InputDecoration(
            hintStyle: greyTextStyle,
            hintText: "Username",
            border: InputBorder.none,
          ),
        ),
      );
    }

    Widget passwordTextField() {
      return Container(
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: TextFormField(
          style: darkLightTextStyle,
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            hintStyle: greyTextStyle,
            hintText: "Password",
            border: InputBorder.none,
          ),
        ),
      );
    }

    Widget content() {
      return SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logo(),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Hey,",
                  style: darkLightTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: extraBold,
                  ),
                ),
                Text(
                  "Masuk Sekarang.",
                  style: darkLightTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: extraBold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Jika tidak punya akun silahkan hubungi markom/programmer.",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                usernameTextField(),
                SizedBox(
                  height: 20,
                ),
                passwordTextField(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lupa Password?",
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                RedButton(
                  onTap: () {
                    handleSignIn();
                  },
                  width: double.infinity,
                  title: "Masuk",
                ),
              ],
            ),
          ),
        ),
      );
    }

    switch (_loginStatus) {
      case LoginStatus.notSignIn:
        return Scaffold(
          backgroundColor: kWhiteColor,
          body: content(),
        );
        // ignore: dead_code
        break;
      case LoginStatus.signInSales:
        return SalesPage();
        // ignore: dead_code
        break;
      case LoginStatus.signInMarkom:
        return MarkomPage();
        // ignore: dead_code
        break;
    }
  }
}
