import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:developer';

class loanModel {
  String succesMsg;
  loanModel({this.succesMsg = ""});

  static Future<loanModel> storedLoan(List argData) async {
    Uri urlApi = Uri.parse("https://api.bukan-web.xyz/api/sevenman/loan");

    var storeData = await http.post(urlApi, headers: {
      "Accept": "application/json"
    }, body: {
      "lab_id": argData[0],
      "tgl_pinjam": argData[1],
      "jam_pinjam": argData[2],
      "user_id": argData[3],
      "username": argData[4],
      "loan_for": argData[5],
      "note": argData[6]
    });
    var respRet = jsonDecode(storeData.body);
    return loanModel(succesMsg: respRet["message"]);
  }

  static Future<loanModel> storedLoanItem(List argData) async {
    Uri urlApi = Uri.parse("https://api.bukan-web.xyz/api/sevenman/loan");
    inspect(argData);
    var storeData = await http.post(urlApi, headers: {
      "Accept": "application/json"
    }, body: {
      "item_id": argData[0],
      "tgl_pinjam": argData[1],
      "jam_pinjam": argData[2],
      "user_id": argData[3],
      "lab_id": "4",
      "username": argData[4],
      "loan_for": argData[5]
    });
    var respRet = jsonDecode(storeData.body);
    return loanModel(succesMsg: respRet["message"]);
  }

  static Future<loanModel> deleteLoan(String argId) async {
    Uri urlApi =
        Uri.parse("https://api.bukan-web.xyz/api/sevenman/loan/" + argId);
    var storeData =
        await http.delete(urlApi, headers: {"Accept": "application/json"});
    var respRet = jsonDecode(storeData.body);
    return loanModel(succesMsg: respRet["message"]);
  }
}
