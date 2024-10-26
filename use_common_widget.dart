import 'package:flutter/material.dart';
import 'package:ui/Common/button.dart';
import 'package:ui/Common/sizebox.dart';
import 'package:ui/Common/text_field.dart';

class CommonWidget extends StatelessWidget {
  const CommonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          sH10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                CommonTextField(
                  obsecure: false,
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                ),
                sH10,
                CommonTextField(
                  obsecure: false,
                  hintText: "Name",
                  prefixIcon: const Icon(Icons.person),
                ),
                sH20,
                Center(
                  child: ButtonCommon(
                    onPressed: () {},
                    child: const Text("Click"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
