import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //int _counter = 0;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future _signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());

    return Text("signupsuccessful");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
        ElevatedButton(onPressed: _signup, child: const Text("signup")),
      ]),
    ));
  }
}
