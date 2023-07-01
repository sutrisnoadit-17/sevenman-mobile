import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quickalert/quickalert.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:intl/intl.dart';
import 'package:project3/models/login.dart';
import 'package:project3/models/loanModel.dart';
import 'dart:developer';

class jadwal extends StatefulWidget {
  jadwal({super.key});

  @override
  State<jadwal> createState() => _jadwalState();
}

class _jadwalState extends State<jadwal> {
  var loanFor, lab, loanDate, scheduleAva, noteF;
  String? selvalue;
  bool _saving = false;
  MultiSelectController _controller = MultiSelectController();
  String? laboratory;
  TextEditingController selectdate = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    selectdate.text = "";
    super.initState();
  }

  TextEditingController note = TextEditingController();
  TextEditingController menudrop = new TextEditingController();
  TextEditingController username = TextEditingController();
  //list jam matkul

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ModalProgressHUD(
      inAsyncCall: _saving,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 229),
            ),
            child: Column(
              children: [
                //=====judul==========
                Row(
                  children: [
                    Flexible(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(13, 20, 0, 2),
                          alignment: Alignment.center,
                          width: 150,
                          height: 50,
                          child: Text(
                            'LAB SCHEDULE',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    //=======foto=====
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(78, 20, 14, 2),
                        width: 100,
                        height: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),

                //=====username=====
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'User identify',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),

                Container(
                  width: 375,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(17, 0, 22, 0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: username,
                    keyboardType: TextInputType.text,
                    showCursor: false,
                    enabled: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: httpLoginReq.name,
                      contentPadding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //======pilih tujuan sewa===
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Loan For',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  width: 375,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(17, 0, 17, 0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    hint: Text('- Select List -'),
                    underline: SizedBox(),
                    icon: Icon(
                      Ionicons.chevron_down_outline,
                      size: 15,
                    ),
                    isExpanded: true,
                    value: selvalue,
                    onChanged: (value) {
                      setState(() {
                        selvalue = value;
                        loanFor = value;
                      });
                      print('Selected item: $selvalue');
                    },
                    items: [
                      'Sempro',
                      'Workshop',
                      'Demo Susulan',
                      'Belajar',
                      'Kelas Pengganti',
                      'Praktikum Pengganti',
                      'Ujian Skripsi',
                      'Semhas',
                      'Riset',
                      'Gathering',
                      'Koordinasi Lab',
                      'Ujian Susulan',
                      'Sertifikasi LSP',
                      'Game jam',
                      'Sertifikasi',
                      'Rapat',
                      'Mengerjakan Skripsi',
                      'UTBK',
                      'UTS',
                      'Demo Tugas',
                      'PKM',
                      'TAEP',
                      'Lomba',
                      'Syuting Video',
                      'Open Recruitment'
                    ]
                        .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                            value: e, child: Text(e.toString())))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //====pilih lab====
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Laboratory',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),

                Container(
                  width: 375,
                  height: 50,
                  margin: EdgeInsets.fromLTRB(17, 0, 17, 0),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    hint: Text('- Select List -'),
                    underline: SizedBox(),
                    icon: Icon(
                      Ionicons.chevron_down_outline,
                      size: 15,
                    ),
                    isExpanded: true,
                    value: laboratory,
                    onChanged: (value) {
                      setState(() {
                        laboratory = value;
                        lab = value;
                      });
                      print('Selected item: $laboratory');
                    },
                    items: ['LAB A/B', 'LAB C/D', 'LAB E/F']
                        .map<DropdownMenuItem<String>>((a) => DropdownMenuItem(
                            value: a, child: Text(a.toString())))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //=====pilih tanggal====
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Loan Date',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    //=====tanggal====
                    Container(
                      width: 375,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(50, 0, 15, 0),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black45, blurRadius: 5)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: selectdate,
                        keyboardType: TextInputType.none,
                        showCursor: false,
                        decoration: InputDecoration(
                            hintText: '- Select List -',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 25)),
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2033),
                          );
                          if (pickedDate != null) {
                            String formatdate =
                                DateFormat('dd-MMM-yyyy').format(pickedDate);
                            setState(() {
                              selectdate.text = formatdate;
                              loanDate = formatdate;
                            });
                            print('Select item: $formatdate');
                          } else {
                            print("Date tidak dipilih");
                            selectdate.text = "";
                          }
                        },
                      ),
                    ),
                    //====pilih jam matkul====
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.fromLTRB(15, 0, 0, 1),
                      //padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 52, 81, 255),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                      ),
                      child: Icon(
                        Ionicons.calendar_outline,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Schedule Avaliabillity',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  width: 375,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black45, blurRadius: 5)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MultiSelectDropDown(
                    hint: '- Select List -',
                    hintStyle: TextStyle(fontSize: 17, color: Colors.black45),
                    showClearIcon: true,
                    controller: _controller,
                    onOptionSelected: (options) {
                      debugPrint(options.toString());
                      scheduleAva = options.toString();
                    },
                    options: <ValueItem>[
                      ValueItem(label: '1/ 07.00 - 07.50', value: '1'),
                      ValueItem(label: '2/ 07.50 - 08.40', value: '2'),
                      ValueItem(label: '3/ 08.40 - 09.30', value: '3'),
                      ValueItem(label: '4/ 09.30 - 10.20', value: '4'),
                      ValueItem(label: '5/ 10.20 - 11.10', value: '5'),
                      ValueItem(label: '6/ 12.10 - 13.00', value: '6'),
                      ValueItem(label: '7/ 13.00 - 13.50', value: '7'),
                      ValueItem(label: '8/ 13.50 - 14.40', value: '8'),
                      ValueItem(label: '9/ 15.15 - 16.05', value: '9'),
                      ValueItem(label: '10/ 16.05 - 16.55', value: '10'),
                      ValueItem(label: '11/ 16.55 - 17.45', value: '11'),
                      ValueItem(label: '12/ 18.15 - 19.05', value: '12'),
                      ValueItem(label: '13/ 19.05 - 19.55', value: '13'),
                      ValueItem(label: '14/ 19.55 - 20.45', value: '14'),
                    ],
                    selectionType: SelectionType.single,
                    chipConfig: ChipConfig(wrapType: WrapType.wrap),
                    dropdownHeight: 300,
                    optionTextStyle: TextStyle(fontSize: 16),
                    selectedOptionIcon: Icon(
                      Ionicons.chevron_down_circle,
                      size: 15,
                    ),
                    inputDecoration: BoxDecoration(color: Colors.transparent),
                  ),
                ),

                SizedBox(height: 15),

                //===note====
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'NOTE',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  width: 375,
                  height: 70,
                  margin: EdgeInsets.fromLTRB(17, 0, 22, 0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black45, blurRadius: 5)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: note,
                    keyboardType: TextInputType.text,
                    showCursor: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Tambah kebutuhan lain selain ruangan',
                      contentPadding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                //====button====
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (selvalue != null &&
                          laboratory != null &&
                          selectdate.text.isNotEmpty &&
                          _controller.selectedOptions.isNotEmpty &&
                          note.text.isNotEmpty) {
                        submit();
                      } else {
                        alertFailed(context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromARGB(255, 52, 81, 255),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                    ),
                    child: Container(
                        child: Row(
                      children: [
                        Icon(
                          Ionicons.add_outline,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add New Booking",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                  ),
                ),

                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void submit() {
    Future.delayed(const Duration(seconds: 1), () {
      try {
        int id = (lab == "LAB A/B")
            ? 1
            : (lab == "LAB C/D")
                ? 2
                : 3;
        List storedData = List.empty(growable: true);
        storedData.addAll([
          id.toString(),
          loanDate,
          scheduleAva.substring(21, 34),
          httpLoginReq.id,
          httpLoginReq.name,
          loanFor,
          note.text
        ]);
        inspect(storedData);
        loanModel.storedLoan(storedData).then((value) => {
              // print(value),
              setState(
                () {
                  if (value.succesMsg.toString() == "success") {
                    _saving = false;
                    alertSuccess(context);
                  }
                },
              ),
            });
      } catch (e) {}
    });
  }

  void alertSuccess(BuildContext context) {
    QuickAlert.show(
        context: context,
        text: "Sukses Meminjam Lab",
        type: QuickAlertType.success);
  }

  void alertFailed(BuildContext context) {
    QuickAlert.show(
        context: context,
        text: "Form Tidak Boleh Kosong",
        type: QuickAlertType.warning);
  }
}
