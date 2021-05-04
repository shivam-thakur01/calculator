import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String conversionvalue;
  final String shortformofunit;
  final String fullformofunit;

  CardWidget(this.conversionvalue, this.fullformofunit, this.shortformofunit);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            width: 200,
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Text(
                    widget.conversionvalue,
                    style: TextStyle(
                        fontSize: 25, color: Color.fromRGBO(132, 26, 171, 0.7)),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                  width: 100,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    widget.shortformofunit,
                    style: TextStyle(fontSize: 24),
                  )),
              Container(
                  width: 100,
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    widget.fullformofunit,
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(162, 164, 168, 1)),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
