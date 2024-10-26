import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/Common/extension_sizebox.dart';
import 'package:ui/Common/extension_textstyle.dart';

class TextFordField extends StatefulWidget {
  const TextFordField({super.key});

  @override
  State<TextFordField> createState() => _TextFordFieldState();
}

class _TextFordFieldState extends State<TextFordField> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String Email = "keyurborad5@gmail.com";
  String Password = "Keyur12@12";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 2.w, right: 2.w),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  bool validEmail = RegExp(
                          "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$")
                      .hasMatch(value!);
                  if (validEmail) {
                    return null;
                  } else {
                    return "Please Enter Valid Email..";
                  }
                },
                controller: email,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              2.h.addHSpace(),
              TextFormField(
                validator: (value) {
                  bool validPassword = RegExp(
                          "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}\$")
                      .hasMatch(value!);
                  if (validPassword) {
                    return null;
                  } else {
                    return "Please Enter Valid Password..";
                  }
                },
                controller: password,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              4.h.addHSpace(),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (Email == email.text && Password == password.text) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Text("Login Succesfully...!"),
                        ),
                      );
                    } else if (Email != email.text &&
                        Password != password.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email and Password both are wrong"),
                        ),
                      );
                    } else if (Email != email.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Email is wrong"),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Password is wrong"),
                        ),
                      );
                    }
                  }
                },
                child: "Log in".appTextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
