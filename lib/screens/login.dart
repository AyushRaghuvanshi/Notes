import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:notes/screens/notes.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController phone;
  void initState() {
    phone = TextEditingController();
    

    super.initState();
  }
  void dispose() {
    phone.dispose();
    

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          
            image: DecorationImage(
              
                image: AssetImage(
                  'assets/notes assets/bg (3).png',
                ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/notes assets/Group 468.png'),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('Welcome to Notes',style: TextStyle(fontSize: 24),),
            )
            ,Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(controller: phone,keyboardType: TextInputType.number,decoration: InputDecoration(hintText: '+91 Phone Number'),),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Pinput(
                length: 4,
                onCompleted: ((value) => {

                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MaterialButton(onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notes()),
                      );
                }, child: Text('Send OTP',style: TextStyle(fontSize: 16),)),
              )
            ],),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Color(0xAAFFC158),borderRadius: BorderRadius.all(Radius.circular(100))),
                  child: IconButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notes()),
                      );
                  },
                  icon: Icon(Icons.arrow_forward),
                  color: Colors.white,
                  ),
                )
              ],),
            )

          ],
        ),        
      ),
    );
  }
}
