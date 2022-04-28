import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  static const routeName = "News";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "أخبار الجامعة",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
