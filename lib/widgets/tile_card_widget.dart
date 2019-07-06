import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/models/settings_card.dart';

class CardTile extends StatelessWidget {
  final SettingsCardModel settingsCard;

  CardTile({Key key, this.settingsCard});



  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        margin: EdgeInsets.only(right: 12.0, left: 12.0),
        child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
            leading: Image.asset(settingsCard.settingsPicture),
            title: Text(
              settingsCard.heading,
              style: TextStyle(
                  color: Color.fromRGBO(4, 44, 92, 1), fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
                margin: EdgeInsets.only(top: 5.0),
                child: Text(settingsCard.subHeading,
                    style: TextStyle(color: Color.fromRGBO(221, 221, 221, 1)))),
            trailing: Icon(Icons.keyboard_arrow_right,
                color: Color.fromRGBO(221, 221, 221, 1), size: 30.0))
    );
  }
}