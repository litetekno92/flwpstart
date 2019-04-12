import 'package:flutter/material.dart';
import 'package:flwpstart/fetchdata.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wordpress primer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FetchData(),
    );
  }
}




