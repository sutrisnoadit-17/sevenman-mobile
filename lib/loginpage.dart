import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quickalert/quickalert.dart';
import 'package:project3/kontennya.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool visibilityPass = false;

  final String myUser = '2022123';
  final String myPass = 'login123';
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //=====================background============
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Image.png"),
            fit: BoxFit.cover,
          ),
        ),
        //=================logoumm===============
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 320, 0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.5),
                ),
                child: Center(
                  // logoumm1CqN (2:132)
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      "assets/Logo_umm.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //========spasi================
              SizedBox(
                height: 15,
              ),
              //===============judul============
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 175, 0),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.5),
                ),
                child: SizedBox(
                  width: 200,
                  height: 80,
                  child: Image.asset(
                    "assets/ac2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //========spasi================
              SizedBox(
                height: 8,
              ),

              //===========textform===================
              Flexible(
                  child: Container(
                padding: EdgeInsets.all(2),
                width: 500,
                height: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(3, 15, 7, 5),
                        child: Column(
                          children: <Widget>[
                            Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54, blurRadius: 25),
                                ]),
                                child: Center(
                                  //===================NIMform========
                                  child: TextFormField(
                                    controller: cUser,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white70,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: const BorderSide(
                                                width: 1.0,
                                                color: Colors.black)),
                                        hintText: "Masukkan NIM"),
                                  ),
                                )),
                            //==============passwordform=================
                            Container(
                              padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54, blurRadius: 10),
                                ],
                              ),
                              child: Center(
                                child: TextFormField(
                                  obscureText: true,
                                  controller: cPass,
                                  decoration: InputDecoration(
                                    fillColor: Colors.white70,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          width: 1.0, color: Colors.black),
                                    ),
                                    hintText: "Masukkan Sandi",
                                  ),
                                ),
                              ),
                            ),
                            //=====tombol=======
                            Container(
                              height: 45,
                              width: 380,
                              padding: EdgeInsets.all(3),
                              decoration: const BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 52, 81, 255),
                                    blurRadius: 7),
                              ]),
                              child: ElevatedButton(
                                onPressed: () {
                                  CekLogin(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 52, 81, 255),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 10,
                                  ),
                                ),
                                child: Container(
                                  child: const Text(
                                    "MASUK",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ))
            ],
          ),
        ),
      ),
    );
  }

//============logikapercabangan=============
  void CekLogin(BuildContext context) {
    if (cUser.text == myUser && cPass.text == myPass) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => dash(),
        ),
      );
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => dash(),
          ));
    } else {
      showalert(context);
    }
  }

//==============errormessage===================
  void showalert(BuildContext context) {
    QuickAlert.show(
        context: context,
        text: "Cek kembali NIM dan Sandi anda",
        type: QuickAlertType.warning);
  }
}
