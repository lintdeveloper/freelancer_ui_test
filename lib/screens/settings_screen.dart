import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/data/data.dart';
import 'package:freelancer_ui_test/utils/screen_size.dart';
import 'package:freelancer_ui_test/widgets/settings_background.dart';
import 'package:freelancer_ui_test/widgets/tile_card_widget.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 249, 249, 1),
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
                      flex: 2,
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
        onPressed: () {},
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
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }

  final makeListTile = ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
      title: Text(
        "Profile Settings",
        style: TextStyle(
            color: Color.fromRGBO(4, 44, 92, 1), fontWeight: FontWeight.bold),
      ),
      subtitle: Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text("Update and modify your profile",
              style: TextStyle(color: Color.fromRGBO(221, 221, 221, 1)))),
      trailing: Icon(Icons.keyboard_arrow_right,
          color: Color.fromRGBO(221, 221, 221, 1), size: 30.0));
}
