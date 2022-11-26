import 'package:dio/dio.dart';

class API {
  fetchData() async {
    try {
      var resp = await Dio().get(
        "https://programming-quotes-api.herokuapp.com/Quotes?count=10",
        options: Options(responseType: ResponseType.plain),
      );

      var responseBody = resp.data;

      print(responseBody);

      // print(respData.trim);

      // var rsort = res.sort(res);
    } catch (e) {
      // Logger().d("$e , result");
    }
  }
}

class Authors {
  int? id;
  String? name;
  String? qoutes;

  Authors({this.id, this.name, this.qoutes});

  Authors.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    qoutes = json['qoutes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['qoutes'] = this.qoutes;
    return data;
  }
}
