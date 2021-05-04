import 'package:dscproject/Mydrawer.dart';
import 'package:dscproject/conversioncalculation.dart';
import 'package:dscproject/widgets.dart';
import 'package:flutter/material.dart';

class DistanceConverter extends StatefulWidget {
  const DistanceConverter({Key key}) : super(key: key);

  @override
  _DistanceConverterState createState() => _DistanceConverterState();
}

double lengthtyped = 1;
String unittyped = 'm';




class _DistanceConverterState extends State<DistanceConverter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Length Converter'),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter length',contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  lengthtyped = double.parse(text);
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Card(elevation: 1,child: Text(unittyped,style: TextStyle(fontSize: 25,color: Color.fromRGBO(132, 26, 171, 0.7)),)),
               DropdownButton(
              items: <String>[
                'mm',
                'cm',
                'dm',
                'm',
                'km',
                'in',
                'ft',
                'yd',
                'mi',
                'nmi'
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
                  unittyped = newValue;
                });
              },
            ),
            ],),
           
            SizedBox(
              height: 11,
            ),
            //sequence of length unit [mm,cm,dm,m,km,in,ft,yd,mi,nmi]
             
            Container(
              height: 503,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[0],'millimeter','mm'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[1],'centimeter','cm'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[2],'decimeter','dm'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[3],'meter','m'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[4],'kilometer','km'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[5],'inch','in'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[6],'foot','ft'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[7],'yard','yd'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[8],'mile','mi'),),
                      Container(  
                      child: CardWidget(distConverter(unittyped, lengthtyped)[9],'nautical mile','nmi'),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
