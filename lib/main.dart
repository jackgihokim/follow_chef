import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Follow Chef',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _getColorHexFromStr(String colorStr) {
    colorStr = 'FF' + colorStr;
    colorStr = colorStr.replaceAll('#', '');
    int val = 0;
    int len = colorStr.length;

    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);

      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw FormatException('An error occurred when converting a color!');
      }
    }

    return val;
  }

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: _size.height * 0.36,
                color: Color(_getColorHexFromStr('#edeace')),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 15.0,
                            top: 15.0
                          ),
                          hintText: '쉐프, 요리, 카테고리를 검색해보세요',
                          hintStyle: TextStyle(
                            color: Colors.grey
                          )
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  Padding(
                    padding: EdgeInsets.only(left: 40.0, top: 20.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0
                          )
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '인기있는 레시피',
                                style: TextStyle(
                                  fontSize: 20.0,
//                                  fontFamily: 'Timesroman',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'This Week',
                                style: TextStyle(
                                  fontSize: 20.0,
//                                  fontFamily: 'Timesroman',
//                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    height: 180.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(width: 15.0),
                        _weeklyCard(),
                        SizedBox(width: 15.0),
                        _weeklyCard(),
                        SizedBox(width: 15.0),
                        _weeklyCard(),
                        SizedBox(width: 15.0),
                        _weeklyCard(),
                        SizedBox(width: 15.0),
                        _weeklyCard(),
                        SizedBox(width: 15.0),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40.0,),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 50.0),
            child: Text(
              '오늘의 레시피',
              style: TextStyle(
                color: Color(_getColorHexFromStr('#5c492c')),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
//                fontFamily: 'Timesroman',
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: Container(
                  width: _size.width * 0.8,
                  height: _size.height * 0.4,
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: AssetImage('assets/today_3.jpg'),
                      fit: BoxFit.cover
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[500],
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _weeklyCard() {
    return Container(
      width: 300.0,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(0, 3),
            blurRadius: 15.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 160.0,
            height: 130.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage('assets/circle_chickenPlate.png')
              ),
            ),
          ),
//                              SizedBox(width: 20.0,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '그릴 치킨과',
                style: TextStyle(
                  fontSize: 18.0,
//                                      fontFamily: 'Quicksand'
                ),
              ),
              Text(
                '과일 샐러드',
                style: TextStyle(
                  fontSize: 18.0,
//                                        fontFamily: 'Quicksand'
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 120.0,
                height: 2.0,
                color: Colors.orange,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      image: DecorationImage(
                        image: AssetImage('assets/cook_jamie_oliver.jpg')
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Jamie Oliver',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
