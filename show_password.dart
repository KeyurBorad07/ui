import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ShowPassword extends StatefulWidget {
  const ShowPassword({super.key});

  @override
  State<ShowPassword> createState() => _ShowPasswordState();
}

class _ShowPasswordState extends State<ShowPassword> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: isShow,
            decoration: InputDecoration(
              constraints: BoxConstraints.expand(height: 5.5.h, width: 75.w),
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(Icons.lock, color: Colors.grey),
              hintText: "Password",
              suffixIcon: IconButton(
                icon: isShow == true
                    ? const Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )
                    : const Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      ),
                onPressed: () {
                  isShow = !isShow;
                  setState(() {});
                },
              ),
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(2.h),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(2.h),
              ),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(20),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
