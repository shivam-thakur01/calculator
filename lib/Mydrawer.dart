import 'package:dscproject/massconverter.dart';
import 'package:dscproject/tempconverter.dart';
import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'distanceconverter.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: [
            Container(child: Column(children: [
              Container(
                height: 160,width: double.infinity,
                decoration: BoxDecoration(shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/images/calculator.png')),
                ),),
                new Container(
                  color: Colors.purple,width: double.infinity,padding: EdgeInsets.all(10),
                  child: Text('Calculator And Unit Converter',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),)
            ],),),
            InkWell(
              child: Container(child:  Row(children: [
                Container(
                  height: 30,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('assets/images/calculatorlogo.png'),),
                  Text('Calculator',style: TextStyle(fontSize: 20),),
              ],),),
              onTap:  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Calculator(),
                    ));
              },
            ),
            InkWell(
              child: Container(child:  Row(children: [
                Container(
                  height: 30,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('assets/images/length.png'),),
                  Text('Length Converter',style: TextStyle(fontSize: 20),),
              ],),),
              onTap:  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DistanceConverter(),
                    ));
              },
            ),
            InkWell(
              child: Container(child:  Row(children: [
                Container(
                  height: 30,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('assets/images/mass.png'),),
                  Text('Mass Converter',style: TextStyle(fontSize: 20),),
              ],),),
              onTap:  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MassConverter(),
                    ));
              },
            ),
            InkWell(
              child: Container(child:  Row(children: [
                Container(
                  height: 30,
                  margin: EdgeInsets.all(20),
                  child: Image.asset('assets/images/temp.png'),),
                  Text('Temperature Converter',style: TextStyle(fontSize: 20),),
              ],),),
              onTap:  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TempConverter(),
                    ));
              },
            )
           
          ],
        ),
    );
  }
}