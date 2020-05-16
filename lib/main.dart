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
                height: _size.height * 0.3,
                color: Color(_getColorHexFromStr('#FFF5EA')),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 10.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: TextFormField(
                        decoration: InputDecoration(
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
