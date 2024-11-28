
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_todo/app/config/routes_app.dart';

import '../../config/config_toast.dart';
import '../../config/local_storage.dart';
import '../../data/login/service/login_service.dart';

class LoginController extends GetxController{
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    username.text = 'jordytomara';
    password.text = 'test123';
  }

  void authUser()async{

    if(username.text!="" && password.text != "") {
      var login = await LoginNetwork().authUser(username.text, password.text);
      //print('cek login ${login!.statusCode}');
      if(login !=null) {
        if (login.statusCode == 2110) {
          print('sukses ${login.message}');
          Get.toNamed(RoutesApp.home);
          ConfigLocalStorage().saveToken(login.data.token);
        } else {
          ConfigToast.error("Ada kendala https");
        }
      }
      print(login);
    }
    else {
      ConfigToast.error("Lengkapi data terlebih dahulu !");
    }
  }

}