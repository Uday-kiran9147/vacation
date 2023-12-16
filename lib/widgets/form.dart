import 'package:flutter/material.dart';

class Form_Widget extends StatelessWidget {
  // const Form_Widget({super.key});
  final _formkey = GlobalKey<FormState>();

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  Form_Widget({super.key});

  trySubmit() {
    final isvalid = _formkey.currentState!.validate();
    if (isvalid) {
      // Text in each of textfields it is necessary else the information in textfields will not be saved and stored..
      _formkey.currentState!
          .save(); //if not saved showSubmit() (function) will not print.
      showSubmit();
    } else {
      print("Error");
    }
  }

  showSubmit() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter first name"),
                  key: const ValueKey("First Name"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "First Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter Last name"),
                  key: const ValueKey("Last Name"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Last Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Enter E-mail name"),
                  key: const ValueKey("E-mail"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "E-mail Name cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: "Password"),
                  key: const ValueKey("Password"),
                  validator: (value) {
                    if (value.toString().length <= 5) {
                      return "password cannot less than 5 characters";
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      trySubmit();
                    },
                    child: const Text("submit")),
              ],
            )),
      ),
    );
  }
}
