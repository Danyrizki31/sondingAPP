import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  List list;
  int index;
  Riwayat({required this.index, required this.list});
  @override
  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("${widget.list[widget.index]['user_id']}")),
      body: new Container(
        height: 250.0,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Text(
                  widget.list[widget.index]['nik'],
                  style: new TextStyle(fontSize: 20.0),
                ),
                new Text(
                  "Nama : ${widget.list[widget.index]['nama']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Hasil: ${widget.list[widget.index]['hasil']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Waktu: ${widget.list[widget.index]['waktu']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Tanggal: ${widget.list[widget.index]['tanggal']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Text(
                  "Keterangan: ${widget.list[widget.index]['keterangan']}",
                  style: new TextStyle(fontSize: 18.0),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                ),
                new Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new RaisedButton(
                      child: new Text("Edit"),
                      color: Colors.green,
                      onPressed: () {},
                    ),
                    new RaisedButton(
                      child: new Text("Delete"),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
