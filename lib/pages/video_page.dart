import 'package:flutter/material.dart';

import 'package:followchef/routes/routing_constants.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  final Color icon = Color(0xFFEF412D);
  final Color color1 = Color(0xFFCF3529);
  final Color color2 = Color(0xFFE1372F);
  final Color color3 = Color(0xFFEF6C1C);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 350,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color2, color3],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  )
                ),
              )
            ),
            Positioned(
              top: 350,
              left: 0,
              right: 150,
              bottom: 80,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: color1,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50.0)
                  )
                ),
              )
            ),
            Positioned(
              top: 350,
              left: 30,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Text(
                      '레시피',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      '야채 200g',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 20.0
                      ),
                    ),
                    Text(
                      'B.P. 5g',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    Text(
                      '카놀라유 60ml',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    Text(
                      '소금 1/2ts',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    Text(
                      '박력분 250g',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    Text(
                      '파마산 치즈가루 2Ts',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    Text(
                      '설탕 50g',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20.0
                      ),
                    ),
                    SizedBox(height: 50.0),
                    SizedBox(
                      height: 30.0,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.local_dining, color: Colors.white,),
                          SizedBox(width: 5.0),
                          Text('501.9 kcal',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Text('Vegetarian',style: TextStyle(color: Colors.white, fontSize: 18.0),),
                          Spacer(),
                          VerticalDivider(color: Colors.white),
                          Spacer(),
                          Icon(Icons.av_timer, color: Colors.white,),
                          SizedBox(width: 5.0),
                          Text('20 min',style: TextStyle(color: Colors.white, fontSize: 18.0),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 380,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        blurRadius: 30.0
                    )
                  ]
              ),
              child: SizedBox(
                height: 350,
                child: Image.asset(
                  'assets/today_3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 325,
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: IconButton(
                  color: icon,
                  onPressed: () {},
                  icon: Icon(Icons.play_arrow,)
                ),
              ),
            ),
            Positioned(
              top: 325,
              right: 20,
              child: RaisedButton(
                child: Text('주문하기'),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, OrderPageRoute);
                },
              ),
            ),
            Container(height: 70.0, child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )),
          ],
        ),
      ),
    );
  }
}
