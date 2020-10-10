import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemNama;
  final String itemIsi;
  final String itemArti;

  const DetailPage(
      {Key key, this.itemNama, this.itemIsi, this.itemArti})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Detail " + itemNama,
              style: TextStyle(color: Colors.black)),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                itemNama,
                style: TextStyle(color: Colors.green, fontSize: 24),
              ),
              Text(itemIsi),
              Text(itemArti),
            ]));
  }
}
