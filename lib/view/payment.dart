import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  static const routeName = "Payment";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تبرعات",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          children: [
            const Text('حالة رقم'),
            Column(
              children: [
                Image.asset("assets/hash.jpg"),
                Column(
                  children: [
                    ListTile(
                      title: Text('حقيبة رمضانية'),
                      trailing: Text('اسم الحالة '),
                    ),
                    ListTile(
                      title: Text('12/12/2020'),
                      trailing: Text('تاريخ الحالة '),
                    ),
                    ListTile(
                      title: Text('وصف الحالة وصف الحالة وصف الحالة'),
                      trailing: Text('وصف الحالة'),
                    ),
                    // Text('تاريخ الحالة '),
                    // Text('وصف الحالة '),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: Text("تبرع الان"),
                      onPressed: () {},
                    ),
                    Row(
                      children: [
                        Text("29"),
                        Icon(Icons.group),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
