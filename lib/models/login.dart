import 'dart:convert';
import 'package:http/http.dart' as http;

class httpLoginReq {
  String succesMsg;
  static String nim = "", id = "", urlImg = "", name = "";
  httpLoginReq({this.succesMsg = ""});

  static Future<httpLoginReq> login(String argUsrnm, String argPassUser) async {
    Uri urlApi = Uri.parse("https://api.bukan-web.xyz/api/sevenman/users/get1");

    var returnResponse = await http
        .post(urlApi, body: {"username": argUsrnm, "password": argPassUser});
    var dataReturn = jsonDecode(returnResponse.body);
    nim = argUsrnm;
    fetchData();
    return httpLoginReq(succesMsg: dataReturn["message"]);
  }

  static fetchData() async {
    Uri urlApi =
        Uri.parse("https://api.bukan-web.xyz/api/sevenman/users/login");
    try {
      var returnResponse = await http.post(urlApi,
          headers: {"Accept": "application/json"}, body: {"username": nim});
      var dataReturn = jsonDecode(returnResponse.body);
      //set attrib
      nim = dataReturn['data'][0]['username'];
      id = dataReturn['data'][0]['id'];
      name = dataReturn['data'][0]['fullName'];
      //end
      urlImg = "https://krs.umm.ac.id/Poto/" +
          nim.substring(0, 4) +
          "/" +
          nim +
          ".JPG";
    } catch (e) {
      print(e);
    }
  }
}
