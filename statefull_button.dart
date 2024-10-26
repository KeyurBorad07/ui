import 'package:flutter/material.dart';

class StateFullButton extends StatefulWidget {
  const StateFullButton({super.key});

  @override
  State<StateFullButton> createState() => _StateFullButtonState();
}

class _StateFullButtonState extends State<StateFullButton> {
  double sliderNum = 0;
  double sliderValue = 0;
  bool isSwitch = false;
  bool isCheck = false;
  int radioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey.shade300,
              thumbColor: Colors.white,
              trackHeight: 1,
              activeTickMarkColor: Colors.green,
              inactiveTickMarkColor: Colors.grey,
            ),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 5,
              value: sliderNum,
              onChanged: (value) {
                sliderNum = value;
                setState(() {});
              },
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey.shade300,
              thumbColor: Colors.white,
              trackHeight: 3,
              activeTickMarkColor: Colors.white,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorColor: Colors.transparent,
              valueIndicatorTextStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            child: Slider.adaptive(
              min: 0,
              max: 100,
              divisions: 100,
              label: "\$${sliderValue.toStringAsFixed(0)}",
              value: sliderValue,
              onChanged: (value) {
                sliderValue = value;
                setState(() {});
              },
            ),
          ),
          Switch(
            activeTrackColor: Colors.green,
            //  trackColor: MaterialStateProperty.all(Colors.green),
            inactiveTrackColor: Colors.grey,
            thumbColor: MaterialStateProperty.all(Colors.white),
            value: isSwitch,
            onChanged: (value) {
              setState(() {
                isSwitch = !isSwitch;
              });
            },
          ),
          Checkbox(
            value: isCheck,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            activeColor: Colors.green,
            checkColor: Colors.redAccent,
            onChanged: (value) {
              setState(() {
                isCheck = !isCheck;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Male"),
              Radio(
                value: 1,
                groupValue: radioValue,
                onChanged: (value) {
                  radioValue = value!;
                  setState(() {});
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Female"),
              Radio(
                value: 2,
                groupValue: radioValue,
                onChanged: (value) {
                  radioValue = value!;
                  setState(() {});
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
