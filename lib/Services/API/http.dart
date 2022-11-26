import 'dart:convert';
import 'package:http/http.dart';
import 'package:progqou/Services/models.dart';

String baseUrl = "https://programming-quotes-api.herokuapp.com/Quotes?count=10";

class QouteRepository {
  String url = baseUrl;
  Future<List<QouteModel>> getQoutes() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      // debugPrint(result.toString());
      return result.map(((e) => QouteModel.fromJson(e))).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
