import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:admin_mobile_sevenman/halamanUtama.dart';



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
      
      body: Container(
        width: double.infinity, height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children:  [

                  // Card(
                  //   color: Colors.red,
                  //   elevation: 2,
                  //   child: Container(
                  //     decoration: Radius.circular(radius)
                  //     height: 50,
                  //     child: InkWell (
                  //       splashColor: Colors.red,
                  //       child: Center(
                  //        child: Text("Login Failed", style: const TextStyle(fontSize: 16, color: Colors.white),)
                  //       ),
                  //     ),
                  //   )
                  // ),

                  SizedBox(height: 30,),

                  TextFormField(
                    controller: cUser,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2.0)
                      ),
                      hintText: 'NIM', 
                    ),
                  ),
                  
                  SizedBox(height: 26,),

                  TextFormField(
                    controller: cPass,
                    obscureText: !visibilityPass,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2.0),
                      ),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            visibilityPass = !visibilityPass;
                          });
                        }, 
                        icon: visibilityPass ? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                        ),
                    ),
                  ),

                  SizedBox(height: 26,),

                  Row(
                   children: [
                     GestureDetector(
                       onTap: () {},
                        child: Text (
                          "Lupa Kata Sandi?",
                           style: TextStyle(decoration: TextDecoration.underline, fontSize: 12),
                       ),
                     )
                    ],
                 ),

                 ElevatedButton(
                  onPressed: () {
                    CekLogin(context);
                  }, 
                  child: Container(
                    child: Text("MASUK", style: TextStyle(fontSize: 16),),
                  )
                  )

                ],
              ),
            )
          ]
        )
      )
    );
  }

  void CekLogin (BuildContext context) {

    if (cUser.text == myUser && cPass.text== myPass){
      // Navigator.pushReplacement(
      //   context,
      //  MaterialPageRoute(
      //   builder: (context) => HalUtama(),
      //   ));
        Navigator.push(
        context,
       MaterialPageRoute(
        builder: (context) => HalUtama(),
        ));
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Login Failed", style: TextStyle(fontSize: 16, color: Colors.white),),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

}