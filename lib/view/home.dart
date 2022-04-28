import 'package:flutter/material.dart';
import 'package:oiu/widget/app_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //Scaffold.of(context).openDrawer();
              _drawerKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.book, color: Colors.white)),
      ),
      drawer: AppDrawer(),
    );
  }
}
