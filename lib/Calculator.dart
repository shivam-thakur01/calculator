import 'package:dscproject/Mydrawer.dart';
import 'package:dscproject/calculation.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String statement = ''; //statement to show on screen.
  var state = [];
  String resulttoshow = '0'; //result to show initially

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: Text('Calculator'),
    );
    return Scaffold(
      drawer: Drawer(
        child: MyDrawer(),
      ),
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      statement,
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Text(
                      resulttoshow,
                      style: TextStyle(fontSize: 52),
                    ),
                  ],
                ),
              ),
            ),
            // ],
            // ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.1146,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(132, 26, 171, 0.7)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        'C',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          resulttoshow = '0';
                          statement = '';
                          state = [];
                        });

                        // print(statement);
                      },
                    ))),
                Container(
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.1146,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(222, 200, 250, 1)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        'Dlt',
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      onPressed: () {
                        buttontap('Dlt');
                        setState(() {
                          // state.add('1');
                          state.removeLast();
                          statement = state.join();
                        });
                        // print(statement);
                      },
                    ))),
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('1');
                        setState(() {
                          state.add('1');
                          statement = state.join();
                        });
                        // print(statement);
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('2');
                        setState(() {
                          state.add('2');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('3');
                        setState(() {
                          state.add('3');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(222, 200, 250, 1)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '+',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        buttontap('+');
                        setState(() {
                          state.add('+');
                          statement = state.join();
                        });
                        // print(statement);
                      },
                    ))),
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('4');
                        setState(() {
                          state.add('4');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('5');
                        setState(() {
                          state.add('5');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '6',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('6');
                        setState(() {
                          state.add('6');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(222, 200, 250, 1)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '_',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        buttontap('-');
                        setState(() {
                          state.add('-');
                          statement = state.join();
                        });
                      },
                    ))),
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '7',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('7');
                        setState(() {
                          state.add('7');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '8',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('8');
                        setState(() {
                          state.add('8');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '9',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('9');
                        setState(() {
                          state.add('9');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(222, 200, 250, 1)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '×',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        buttontap('×');
                        setState(() {
                          state.add('×');
                          statement = state.join();
                        });
                      },
                    ))),
              ],
            ),
            Row(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '.',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('.');
                        setState(() {
                          state.add('.');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Colors.black),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '0',
                        style: TextStyle(fontSize: 30, color: Colors.purple),
                      ),
                      onPressed: () {
                        buttontap('0');
                        setState(() {
                          state.add('0');
                          statement = state.join();
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(132, 26, 171, 0.7)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '=',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          resulttoshow = buttontap('=');
                          print(statement);
                          state = [];
                        });
                      },
                    ))),
                Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: (MediaQuery.of(context).size.height-appbar.preferredSize.height-
                    MediaQuery.of(context).padding.top) * 0.15,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(245, 154, 245, 1), width: 1),
                        color: Color.fromRGBO(222, 200, 250, 1)),
                    child: Expanded(
                        child: MaterialButton(
                      child: Text(
                        '÷',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      onPressed: () {
                        buttontap('÷');
                        setState(() {
                          state.add('÷');
                          statement = state.join();
                        });
                      },
                    ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
