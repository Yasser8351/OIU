import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class College extends StatelessWidget {
  const College({Key? key}) : super(key: key);

  static const routeName = "College";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "الكليات",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
