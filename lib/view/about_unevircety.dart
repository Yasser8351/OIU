import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class AboutUniversity extends StatelessWidget {
  const AboutUniversity({Key? key}) : super(key: key);

  static const routeName = "AboutUniversity";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "حول الجامعة",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
