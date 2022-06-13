import 'package:flutter/material.dart';
import 'package:flutter_buclar/burc_detay.dart';
import 'package:flutter_buclar/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc ListelenenBurc;
  const BurcItem({required this.ListelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/burcDetay',
                  arguments: ListelenenBurc);
            },
            leading: Image.asset(
              'assets/images/' + ListelenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(ListelenenBurc.burcAdi, style: myTextStyle.headline5),
            subtitle: Text(
              ListelenenBurc.burcTarih,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
