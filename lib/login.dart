import 'package:flutter/material.dart';
import 'function/func_login.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  // ignore: non_constant_identifier_names
  TextEditingController ctl_user = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController ctl_pwd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Image.asset(
                    'assets/images/flutter-logo.png',
                    width: 200,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: ctl_user,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: ctl_pwd,
                    obscureText: true,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
              
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                       login(context, ctl_user.text, ctl_pwd.text);
                      },
                      child: const Text("Login"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}