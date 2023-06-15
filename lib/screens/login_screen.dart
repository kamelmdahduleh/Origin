// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:smpa_e_health/constants.dart';
import 'package:smpa_e_health/screens/health_screen.dart';
import 'package:smpa_e_health/screens/mainBody_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyLogin();
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(fontFamily: 'Roboto'),
    //   home: const MyLogin(),
    // );
  }
}

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Color(kMyPurple)),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Log In',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Image(
                    image: AssetImage(
                  'images/logo_test.png',
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Username',
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(kMyGrey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('Password'),
            const SizedBox(
              height: 15,
            ),
            TextField(
              style: const TextStyle(fontSize: 18),
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(kMyGrey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
              height: 45,
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              color: const Color(kMyPurple),
              child: const Text(
                'Log In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BodyScreen()),
                );
              },
            ),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(
              height: 45,
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(kMyPurple),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BodyScreen()),
                );
              },
            ),
            const Expanded(
              child: SizedBox(
                height: 10,
              ),
            ),
            const Divider(
              color: Colors.black26,
            ),
            const Text(
              'Copyright ©️ 2022 1293602 B.C. LTD. - All Rights Reserved',
              style: TextStyle(color: Colors.black26, fontSize: 16),
            ),
            // const SizedBox(
            //   height: 20,
            // )
          ],
        ),
      ),
    );
  }
}
