import 'package:flutter/material.dart';
import 'package:flutter_buclar/burc_listesi.dart';
import 'package:flutter_buclar/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
     onGenerateRoute: RouteGenerator.rounteGenrator,
    );
  }
}
