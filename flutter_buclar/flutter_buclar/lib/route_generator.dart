import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_buclar/burc_detay.dart';
import 'package:flutter_buclar/burc_listesi.dart';
import 'package:flutter_buclar/model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? rounteGenrator(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BurcListesi(),
        );

      case '/burcDetay':
        final secilen = settings.arguments as Burc;
        return MaterialPageRoute(
          builder: (context) => BurcDetay(secilenBurc: secilen),
        );
    }
  }
}
