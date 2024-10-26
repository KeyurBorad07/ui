import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        elevation: 20,
        // backgroundColor: Colors.grey,
        shadowColor: Colors.red,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // UserAccountsDrawerHeader(
            //   accountName: Text("Keyur Borad"),
            //   accountEmail: Text("keyurborad1@gmail.com"),
            //   currentAccountPicture: CircleAvatar(radius: 40),
            //   currentAccountPictureSize: Size(80, 80),
            // ),
            Container(
              height: 200,
              width: 400,
              color: Colors.blue,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Profie"),
                    trailing: Icon(Icons.edit),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return ElevatedButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Text("Open Drawer"),
            );
          },
        ),
      ),
    );
  }
}
