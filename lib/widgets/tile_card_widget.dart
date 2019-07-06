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
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 6.0),
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
//    return Container(
//      height: this.height, //220.0
//      width: _media.width, //370.0
//      decoration: BoxDecoration(
//        borderRadius: BorderRadius.only(
//            bottomRight: const  Radius.circular(40.0)
//        ),
//        gradient: LinearGradient(
//          begin: Alignment.topLeft,
//          end: Alignment(
//              -1.0, -1.0), // 10% of the width, so there are ten blinds.
//          colors: [
//            const Color.fromRGBO(0, 71, 204, 1),
//            const Color.fromRGBO(79, 68, 213, 1)
//          ],
//          tileMode: TileMode.mirror, // repeats the gradient over the canvas
//        ),
//      ),
//      child: Container(
//        child: Stack(
//          children: <Widget>[
//            Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                Container(
//                    width: _media.width/2 ,
//                    height: _media.height/4,
//                    decoration: BoxDecoration(
//                        borderRadius: BorderRadius.only(
//                            bottomLeft: Radius.circular(140.0)),
//                        color: Color.fromRGBO(79, 68, 213, 1)
//                    )
//                ),
//              ],
//            )
//          ],
//        ),
//      ),
//    );
  }
}