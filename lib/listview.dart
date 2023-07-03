import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:project3/componens/FontNColor.dart';
import 'package:project3/componens/button.dart';
import 'dart:convert';
import 'package:project3/models/login.dart';
import 'package:project3/models/loanModel.dart';
import 'package:quickalert/quickalert.dart';
import 'package:intl/intl.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart' as http;
import 'package:confirm_dialog/confirm_dialog.dart';

class schedule extends StatefulWidget {
  @override
  State<schedule> createState() => _myschedule();
}

class _myschedule extends State<schedule> {
  bool _saving = false;
  String idSelected = "";
  Uri apiUrl = Uri.parse("https://api.bukan-web.xyz/api/sevenman/item/");
  Future<List<dynamic>> _fecthDataUsers() async {
    var result =
        await http.get(headers: {"Accept": "application/json"}, apiUrl);
    print("object");
    return json.decode(result.body)['data'];
  }

  get style => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ModalProgressHUD(
      inAsyncCall: _saving,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[300]),
        padding: EdgeInsets.only(top: 55),
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Container(
                              alignment: Alignment.centerLeft,
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 93, 116, 255),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54, blurRadius: 6)
                                  ],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(9),
                                      bottomRight: Radius.circular(9))),
                              child: Center(
                                child: Text(
                                  '*',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(snapshot.data[index]['item_name'], style: TextStyle(fontSize: 15),),
                            subtitle: Text(snapshot.data[index]['description'] +
                                "\n" +
                                "Location : " +
                                snapshot.data[index]['location'], style: TextStyle(fontSize: 15),),
                          ),
                          SizedBox( height: 10,),
                          Center(
                            child: Container(
                              height: 30,
                              width: 350,
                              decoration: BoxDecoration(
                                boxShadow: [ BoxShadow(
                                  color: ButBiru,
                                  blurRadius: 7,
                                )]
                              ),
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (await confirm(
                                    context,
                                    title: const Text('Konfirmasi'),
                                    content: Text(
                                        'Apakah Anda Yakin Akan Memilih Item ' +
                                            snapshot.data[index]['item_name'] +
                                            "?"),
                                    textOK: const Text('Ya'),
                                    textCancel: const Text('Tidak'),
                                  )) {
                                    idSelected = snapshot.data[index]['id'];
                                    return submit();
                                  }
                                  return print('pressedCancel');
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  backgroundColor: ButBiru,
                                  padding: EdgeInsets.all(5),
                                ), 
                                child: Container(
                                  child: const Text(
                                    "pinjam",
                                    style:  TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    ));
  }

  void submit() {
    List storedData = List.empty(growable: true);
    storedData.addAll([
      idSelected,
      DateFormat('dd-MMM-yyyy').format(DateTime.now()),
      DateFormat('kk:mm').format(DateTime.now()),
      httpLoginReq.id,
      httpLoginReq.name,
      "Keperluan Praktikum"
    ]);

    loanModel.storedLoanItem(storedData).then((value) => {
          setState(
            () {
              // _saving = true;
              if (value.succesMsg.toString() == "success") {
                _saving = false;
                alertSuccess(context);
              }
            },
          ),
        });
  }

  void alertSuccess(BuildContext context) {
    QuickAlert.show(
        context: context,
        text: "Sukses Meminjam Item",
        type: QuickAlertType.success);
  }
}
