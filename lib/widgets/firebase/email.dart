import 'package:flutter/material.dart';
import 'package:vacationvproject/functions/authfuncations.dart';
//Try adding TextEditingControllers to the textfeilds.
class EmailAuthentication extends StatefulWidget {
  const EmailAuthentication({super.key});

  @override
  State<EmailAuthentication> createState() => _EmailAuthenticationState();
}

class _EmailAuthenticationState extends State<EmailAuthentication> {
  final _formkey = GlobalKey<FormState>();

  bool isLogin = false;

  String email = "";
  String password = "";
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Email Authentication")),
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(14),
          child: ListView(
            children: [
              TextFormField(
                key: const ValueKey('email'),
                decoration: const InputDecoration(hintText: "Enter email"),
                validator: (value) {
                  if (!value.toString().contains('@')) {
                    return "Email is InValid";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    email = value!;
                  });
                },
              ),
              TextFormField(
                key: const ValueKey('password'),
                decoration: const InputDecoration(hintText: "Enter password"),
                obscureText: true,
                validator: (value) {
                  if (value.toString().length < 5) {
                    return "password is Small";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    password = value!;
                  });
                },
              ),
              TextFormField(
                key: const ValueKey('username'),
                decoration: const InputDecoration(hintText: "Enter username"),
                validator: (value) {
                  if (value.toString().length < 3) {
                    return "user name is Small";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    username = value!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        _formkey.currentState!.save();
                          

                        Signup(email, password);
                      }
                    },
                    child: const Text("submit")),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
                  child: isLogin
                      ? const Text("Don't Have an Account?")
                      : const Text("Already Signed Up? Login"))
            ],
          ),
        ),
      ),
    );
  }
}
