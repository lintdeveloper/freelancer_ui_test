import 'package:flutter/material.dart';

class SettingsBackground extends StatelessWidget {
  final double width;
  final double height;

  SettingsBackground({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Container(
      height: this.height, //220.0
      width: _media.width, //370.0
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: const  Radius.circular(40.0)
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(
              -1.0, -1.0), // 10% of the width, so there are ten blinds.
          colors: [
            const Color.fromRGBO(0, 71, 204, 1),
            const Color.fromRGBO(79, 68, 213, 1)
          ],
          tileMode: TileMode.mirror, // repeats the gradient over the canvas
        ),
      ),
      child: Container(
        child: Stack(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    width: _media.width/2 ,
                    height: _media.height/4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(140.0)),
                        color: Color.fromRGBO(79, 68, 213, 1)
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}