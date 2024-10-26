import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  const DropDownButtonDemo({super.key});

  @override
  State<DropDownButtonDemo> createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  List gender = ["Male", "Female"];
  var selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: selectGender,
          hint: const Text("select gender"),
          items: List.generate(
            gender.length,
            (index) => DropdownMenuItem(
              value: gender[index],
              child: Text("${gender[index]}"),
            ),
          ),
          onChanged: (value) {
            selectGender = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}
