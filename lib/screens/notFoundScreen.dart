import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  String routName;

  NotFoundScreen({this.routName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen not found'),
      ),
      body: Center(
        child: Text('$routName Screen not defined'),
      ),
      backgroundColor: Colors.grey,
    );
  }
}