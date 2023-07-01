import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project3/History.dart';
import 'package:project3/componens/FontNColor.dart';
import 'package:project3/componens/button.dart';
import 'package:project3/models/loanModel.dart';
import 'package:quickalert/quickalert.dart';
import 'dart:convert';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project3/models/login.dart';
import 'package:flutter/scheduler.dart';

class Hsint extends StatefulWidget {
  const Hsint({super.key});

  @override
  State<Hsint> createState() => _HsintState();
}

class _HsintState extends State<Hsint> {
  bool _saving = false;
  String idSelected = "";
  Uri apiUrl = Uri.parse("https://api.bukan-web.xyz/api/sevenman/history/item");
  Future<List<dynamic>> _fecthDataHistoryLab() async {
    var result = await http.post(
        headers: {"Accept": "application/json"},
        apiUrl,
        body: {
          'id': httpLoginReq.id,
        });
    print("object");
    return json.decode(result.body)['data'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.grey[300]),
        child: FutureBuilder<List<dynamic>>(
            future: _fecthDataHistoryLab(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(15),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
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
                                  '1',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            title: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Location: ' +
                                              snapshot.data[index]['item_name'],
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Time: ' +
                                              snapshot.data[index]
                                                  ['jam_pinjam'],
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Loan For: ' +
                                              snapshot.data[index]['loan_for'],
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Date: ' +
                                              snapshot.data[index]
                                                  ['tgl_pinjam'],
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Admin Name: ' +
                                              ((snapshot.data[index]
                                                          ['on_acc'] ==
                                                      "1")
                                                  ? snapshot.data[index]
                                                      ['acc_by']
                                                  : ""),
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Note: ' +
                                              ((snapshot.data[index]['note'] ==
                                                      null)
                                                  ? ''
                                                  : snapshot.data[index]
                                                      ['loan_for']),
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Status: ' +
                                  ((snapshot.data[index]['on_acc'] == "0")
                                      ? "Belum Di Aprrove"
                                      : "Aprroved"),
                              style: TextStyle(
                                  fontSize: 15,
                                  color: (snapshot.data[index]['on_acc'] == "0")
                                      ? Colors.red
                                      : Colors.green),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 30,
                              width: 375,
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 52, 81, 255),
                                    blurRadius: 7),
                              ]),
                              child: ElevatedButton(
                                onPressed: () {
                                  idSelected =
                                      snapshot.data[index]['id_peminjaman'];
                                  submit();
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(9),
                                            topRight: Radius.circular(9))),
                                    backgroundColor:
                                        const Color.fromARGB(255, 93, 116, 255),
                                    padding: EdgeInsets.all(5)),
                                child: Container(
                                  child: const Text(
                                    "Delete",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }

  void submit() {
    print(idSelected);
    loanModel.deleteLoan(idSelected).then((value) => {
          setState(
            () {
              if (value.succesMsg.toString() == "success") {
                alertSuccess(context);
              }
            },
          ),
        });
  }

  void alertSuccess(BuildContext context) {
    QuickAlert.show(
        context: context,
        text: "Sukses Menghapus",
        type: QuickAlertType.success);
  }
}
