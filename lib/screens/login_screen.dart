import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyLogin();
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Log In',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [],
        ),
      ),
    );
  }
}
