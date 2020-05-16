import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:followchef/routes/route_generator.dart';
import 'package:followchef/routes/routing_constants.dart';

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
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: LoadingPageRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
