import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

import 'package:followchef/routes/routing_constants.dart';
import 'package:followchef/pages/home_page.dart';
import 'package:followchef/pages/video_page.dart';
import 'package:followchef/pages/community_page.dart';
import 'package:followchef/pages/order_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
//      case LoadingPageRoute:
//        return CupertinoPageRoute(builder: (_) => LoadingPage());
      case HomePageRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case VideoPageRoute:
        return MaterialPageRoute(builder: (_) => VideoPage());
      case CommunityPageRoute:
        return MaterialPageRoute(builder: (_) => CommunityPage());
      case OrderPageRoute:
        return MaterialPageRoute(builder: (_) => OrderPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
