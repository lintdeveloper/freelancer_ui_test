import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/utils/screen_size.dart';
import 'package:freelancer_ui_test/widgets/settings_background.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            color: Colors.grey.shade50,
            height: _media.height / 2,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: SettingsBackground(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF0047CC),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {},),
            IconButton(icon: Icon(Icons.search), onPressed: () {},),
            IconButton(icon: Icon(Icons.menu), onPressed: () {},),
            IconButton(icon: Icon(Icons.search), onPressed: () {},),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }

}



