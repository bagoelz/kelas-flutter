import 'package:get/get.dart';
import 'package:kelas_flutter/model/user.dart';
import 'package:kelas_flutter/service/apiservices.dart';

class UserController extends GetxController {
  static UserController instance = Get.find();
  final dataUser = RxList<PesertaModel>();

  getData() async {
    dataUser.value = RxList<PesertaModel>();
    await ApiNetwork.instance.getData(5).then((value) {
      int i = 0;
      for (var x in value['results']) {
        dataUser.add(PesertaModel.map(x, i));
        dataUser.refresh();
        i++;
      }
      update();
    });
  }

  tukarStatus(status, urutan) {
    dataUser[urutan].selected = !status;
    dataUser.refresh();
  }

  hapusData(urutan) {
    dataUser.removeAt(urutan);
    dataUser.refresh();
  }

  rubahNama(urutan) {
    dataUser[urutan].edit = true;
    dataUser.refresh();
  }

  fungsiEdit(urutan, nama) {
    dataUser[urutan].edit = false;
    dataUser[urutan].nama = nama;
    dataUser.refresh();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }
}
