import 'package:dscproject/conversioncalculation.dart';
import 'package:dscproject/widgets.dart';
import 'package:flutter/material.dart';

import 'Mydrawer.dart';

class MassConverter extends StatefulWidget {
  MassConverter({Key key}) : super(key: key);

  @override
  _MassConverterState createState() => _MassConverterState();
}
double masstyped = 1;
String massunittyped = 'kg';

class _MassConverterState extends State<MassConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mass Converter'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter mass',contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  masstyped = double.parse(text);
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Card(elevation: 1,child: Text(massunittyped,style: TextStyle(fontSize: 25,color: Color.fromRGBO(132, 26, 171, 0.7)),)),
               DropdownButton(
              items: <String>[
                'mg',
                'g',
                'kg',
                't',
                'gr',
                'oz',
                'lb',
                'ton_us',
                'ton_uk',
                'ct'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                        fontSize: 20, color: Color.fromRGBO(132, 26, 171, 0.7)),
                  ),
                );
              }).toList(),
              onChanged: (String newValue) {
                setState(() {
                  massunittyped = newValue;
                });
              },
            ),
            ],),
           
            SizedBox(
              height: 11,
            ),
            //sequence of mass unit [mg,g,kg,t,gr,oz,lb,ton_us,ton_uk,ct]
            Container(
              height: 503,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[0],'milligram','mg'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[1],'gram','g'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[2],'kilogram','kg'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[3],'metric ton','t'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[4],'grain','gr'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[5],'ounce','oz'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[6],'pound','lb'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[7],'ton(US)','ton_us'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[8],'ton(UK)','ton_uk'),),
                  Container(  
                      child: CardWidget(massConverter(massunittyped, masstyped)[9],'carat','ct'),),
                ],),
              )
            ),
          ],
        ),
      ),
    );
  }
}