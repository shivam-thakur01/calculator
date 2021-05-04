import 'package:flutter/material.dart';

import 'Mydrawer.dart';
import 'conversioncalculation.dart';
import 'widgets.dart';

class TempConverter extends StatefulWidget {
  TempConverter({Key key}) : super(key: key);

  @override
  _TempConverterState createState() => _TempConverterState();
}

double temptyped = 1;
String tempunittyped = 'C';

class _TempConverterState extends State<TempConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temperature Converter'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter temp',
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  temptyped = double.parse(text);
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Card(
                    elevation: 1,
                    child: Text(
                      tempunittyped,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromRGBO(132, 26, 171, 0.7)),
                    )),
                  DropdownButton(
                    items: <String>[
                      'K',
                      'C',
                      'F',
                      'R',
                      'Re',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(132, 26, 171, 0.7)),
                        ),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        tempunittyped = newValue;
                      });
                    },
                  ),
              ],
            ),

            SizedBox(
              height: 11,
            ),
            //sequence [k,C,F,R,Re]
            Container(
              height: 503,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: CardWidget(
                          tempConverter(tempunittyped, temptyped)[0],
                          'Kelvin',
                          'K'),
                    ),
                    Container(
                      child: CardWidget(
                          tempConverter(tempunittyped, temptyped)[1],
                          'Celsius',
                          '°C'),
                    ),
                    Container(
                      child: CardWidget(
                          tempConverter(tempunittyped, temptyped)[2],
                          'Fahrenheit',
                          '°F'),
                    ),
                    Container(
                      child: CardWidget(
                          tempConverter(tempunittyped, temptyped)[3],
                          'Rankine',
                          '°R'),
                    ),
                    Container(
                      child: CardWidget(
                          tempConverter(tempunittyped, temptyped)[4],
                          'Réaumur',
                          '°Ré'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
