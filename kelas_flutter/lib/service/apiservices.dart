import 'package:dio/dio.dart';

class ApiNetwork {
  Dio serviceServer = Dio();
  static ApiNetwork instance = ApiNetwork();
  String baseApi = "https://randomuser.me/api/?inc=gender,name,id,phone";

  Future<dynamic> getData(jumlah) async {
    serviceServer.options.headers = {
      'Content-Type': 'text/plain',
    };
    Response response = await serviceServer.get('$baseApi&results=$jumlah');
    if (response.statusCode == 200) {
      return response.data;
    } else {
      return null;
    }
  }
}
