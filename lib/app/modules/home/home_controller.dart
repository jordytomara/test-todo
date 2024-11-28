
import 'package:get/get.dart';
import 'package:test_todo/app/data/home/model/checklist_model.dart';
import 'package:test_todo/app/data/home/service/home_service.dart';

class HomeController extends GetxController{

  final listData = <DatumList>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getChecklist();
  }

  void getChecklist()async{
    listData.clear();
    var checklist = await HomeService().getChecklist();
    print(checklist);
    listData.addAll(checklist!.data);

    /*if(username.text!="" && password.text != "") {
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
    }*/
  }

  void addChecklist()async{
    var checklist = HomeService().addChecklist();
    getChecklist();
    print(checklist);
  }

}