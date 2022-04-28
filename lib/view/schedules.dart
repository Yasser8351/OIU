import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class Schedules extends StatelessWidget {
  const Schedules({Key? key}) : super(key: key);

  static const routeName = "Schedules";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "الجداول الدراسية",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
