import 'package:flutter/material.dart';
import 'package:oiu/view/about_unevircety.dart';
import 'package:oiu/view/activitys.dart';
import 'view/college.dart';
import 'view/home.dart';
import 'view/news.dart';
import 'view/payment.dart';
import 'view/schedules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OIU',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const News(),
      routes: {
        Home.routeName: (ctx) => const Home(),
        News.routeName: (ctx) => const News(),
        AboutUniversity.routeName: (ctx) => const AboutUniversity(),
        Payment.routeName: (ctx) => const Payment(),
        Schedules.routeName: (ctx) => const Schedules(),
        College.routeName: (ctx) => const College(),
        Activity.routeName: (ctx) => const Activity(),
      },
    );
  }
}
