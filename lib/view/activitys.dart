import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  static const routeName = "activity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "أنشطة",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
