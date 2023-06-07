import 'package:flutter/material.dart';
import 'package:project3/kontennya.dart';
import 'package:datetime_picker_field_platform/datetime_picker_field_platform.dart';
import 'package:ionicons/ionicons.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

class jadwal extends StatefulWidget {
  jadwal({super.key});

  @override
  State<jadwal> createState() => _jadwalState();
}

class _jadwalState extends State<jadwal> {
  String? selectedoption;
  final laboratory = TextEditingController();
  final List<Widget> data = [
    Row(
      children: [
        Text('1/ 07.00 - 07.50'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('2/ 07.50 - 08.40'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('3/ 08.40 - 09.30'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('4/ 09.30 - 10.20'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('5/ 10.20 - 11.10'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('6/ 12.10 - 13.00'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('7/ 13.00 - 13.50'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('8/ 13.50 - 14.40'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('9/ 15.15 - 16.05'),
        SizedBox(width: 180),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('10/ 16.05 - 16.55'),
        SizedBox(width: 170),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('11/ 16.55 - 17.45'),
        SizedBox(width: 170),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('12/ 18.15 - 19.05'),
        SizedBox(width: 170),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('13/ 19.05 - 19.55'),
        SizedBox(width: 170),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    Row(
      children: [
        Text('14/ 19.55 - 20.45'),
        SizedBox(width: 170),
        Text(
          'Empty',
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
  ];
  //String? jamid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(78, 20, 14, 2),
                      width: 100,
                      height: 50,
                      child: Image.network(
                        'https://assets.ayobandung.com/crop/0x0:0x0/750x0/webp/photo/2023/02/03/313280101.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 50,
                    margin: EdgeInsets.fromLTRB(50, 0, 10, 1),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: DateTimeFieldPlatform(
                      mode: DateMode.date,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(5, 7),
                                bottomLeft: Radius.elliptical(5, 7),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            borderSide: BorderSide.none),
                        hintText: "Select Date",
                        contentPadding: EdgeInsets.fromLTRB(28.0, 0, 0, 0),
                      ),
                      maximumDate: DateTime.now().add(Duration(days: 3650)),
                      minimumDate: DateTime.utc(2020),
                      //validator: (String? value) {
                      //  if (value!.isEmpty) {
                      //    return 'TANGGAL TIDAK BOLEH KOSONG';
                      //  }
                      //  return null;
                      //},
                    ),
                  ),
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
                height: 20,
              ),
              Container(
                width: 375,
                height: 50,
                child: CustomDropdown(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.zero, bottom: Radius.zero),
                  hintText: 'Select Laboratory',
                  items: const ['LAB A/B', 'LAB C/D', 'LAB E/F'],
                  controller: laboratory,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 375,
                height: 50,
                padding: EdgeInsets.fromLTRB(17, 0, 16, 0),
                color: Colors.white,
                child: DropdownButton(
                  icon: Icon(
                    Ionicons.chevron_down_outline,
                    size: 15,
                  ),
                  hint: Text('Select Time',
                      style: TextStyle(color: Colors.black38)),
                  value: selectedoption,
                  onChanged: (Widget) {
                    setState(() {
                      selectedoption;
                    });
                  },
                  items: data.map<DropdownMenuItem<Widget>>((Widget value) {
                    return DropdownMenuItem<Widget>(
                      value: value,
                      child: value,
                    );
                  }).toList(),
                  isExpanded: true,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: const Color.fromARGB(255, 52, 81, 255),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                ),
                child: Container(
                  child: const Text(
                    "CONFIRM",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  void _validateFields() {
//    _formKey.currentState!.validate();
//  }
