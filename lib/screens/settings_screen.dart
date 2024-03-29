import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/data/data.dart';
import 'package:freelancer_ui_test/utils/screen_size.dart';
import 'package:freelancer_ui_test/widgets/fab_bottom_appbar.dart';
import 'package:freelancer_ui_test/widgets/profile_card.dart';
import 'package:freelancer_ui_test/widgets/settings_background.dart';
import 'package:freelancer_ui_test/widgets/tile_card_widget.dart';
import 'package:flutter/cupertino.dart';

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
                Positioned(
                  top: _media.longestSide <= 775
                      ? screenAwareSize(40, context)
                      : screenAwareSize(45, context),
                  left: 10,
                  right: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: _media.longestSide <= 775 ? 20 : 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Avenir"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset("assets/images/edit.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    height: _media.longestSide <= 775
                        ? _media.height / 3
                        : _media.height / 4.3,
                    width: _media.width,
                    child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ProfileCard(
                          profile: getUserProfileCard()[0],
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: _media.width,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: getSettingsCard().length + 1 ,
              itemBuilder: (BuildContext context, int index) {
                if(index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 4.0),
                        child: Text("GENERAL",
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Color.fromRGBO(119,134,158,1)))),
                  );
                }
                return Container(
                  margin: EdgeInsets.all(3.0),
                  child: CardTile(
                    settingsCard: getSettingsCard()[index - 1],
                  ),
                );
              },
            ),
          ),
          Container(
            width: _media.width,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: getSettingsCard().length + 1 ,
              itemBuilder: (BuildContext context, int index) {
                if(index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 4.0),
                        child: Text("GENERAL",
                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Color.fromRGBO(119,134,158,1)))),
                  );
                }
                return Container(
                  margin: EdgeInsets.all(3.0),
                  child: CardTile(
                    settingsCard: getSettingsCard()[index - 1],
                  ),
                );
              },
            ),
          )
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
      bottomNavigationBar: FABBottomAppBar(
        color: Colors.grey,
        selectedColor: Colors.blue,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: null,
        items: [
          FABBottomAppBarItem(iconData: CupertinoIcons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: CupertinoIcons.folder_solid, text: 'Expenses'),
          FABBottomAppBarItem(iconData: CupertinoIcons.create , text: 'Wallet'),
          FABBottomAppBarItem(iconData: CupertinoIcons.person_solid, text: 'Profile'),
        ],
      )
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
