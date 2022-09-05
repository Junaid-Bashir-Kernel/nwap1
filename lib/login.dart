import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //int _counter = 0;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future _login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        TextField(
          controller: emailController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(label: Text("email")),
        ),
        TextField(
          controller: passwordController,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(label: Text("password")),
        ),
        ElevatedButton(onPressed: _login, child: Text("login"))
      ]),
    );
  }
}
