import 'package:flutter/material.dart';
import 'package:ui/Common/extension_textstyle.dart';

class ShowModalBottomSheetDemo extends StatefulWidget {
  const ShowModalBottomSheetDemo({super.key});

  @override
  State<ShowModalBottomSheetDemo> createState() =>
      _ShowModalBottomSheetDemoState();
}

class _ShowModalBottomSheetDemoState extends State<ShowModalBottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Modal Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.grey,
              barrierColor: Colors.blueGrey.shade50,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              context: context,
              builder: (context) {
                return const ShowSheet();
              },
            );
          },
        ),
      ),
    );
  }
}

class ShowSheet extends StatefulWidget {
  const ShowSheet({super.key});

  @override
  State<ShowSheet> createState() => _ShowSheetState();
}

class _ShowSheetState extends State<ShowSheet> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return SizedBox(
          height: 600,
          width: 500,
          child: Column(
            children: [
              "data".appTextStyle(fontSize: 30),
            ],
          ),
        );
      },
    );
  }
}
