import 'package:flutter/material.dart';
import 'package:flutter_application_1/functions/email_validator.dart';
import 'package:flutter_application_1/pages/HomeStack.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                key: const ValueKey("email"),
                decoration: const InputDecoration(hintText: "Enter email here"),
                validator: (value) => EmailValidator.validateEmail(value ?? ""),
              ),
              TextFormField(
                controller: _passwordController,
                key: const ValueKey("password"),
                obscureText: true,
                decoration:
                    const InputDecoration(hintText: "Enter password here"),
                validator: (value) =>
                    EmailValidator.validatePassword(value ?? ""),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_key.currentState?.validate() == true) {
                      //print(_emailController.text);
                      //print(_passwordController.text);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeStack()));
                    } else {
                      print('validate fail');
                    }
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
