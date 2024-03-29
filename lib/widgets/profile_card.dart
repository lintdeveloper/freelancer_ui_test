import 'package:flutter/material.dart';
import 'package:freelancer_ui_test/models/user_profile_model.dart';

class ProfileCard extends StatelessWidget {
  final UserProfileModel profile;

  ProfileCard({Key key, this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Material(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: _media.width - 40,
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/ricardo.png",
                  height: 40,
                  width: 80,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      profile.userName,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(4, 44, 92, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/verified.png")
                  ],
                ),
                Text(profile.userEmail,
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0)),
                SizedBox(height: 15.0),
                Container(
                  width: _media.width,
                  color: Color.fromRGBO(248, 249, 249, 1),
                  margin: EdgeInsets.only(top: 2.0, bottom: 8.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset("assets/images/badge1.png"),
                        Image.asset("assets/images/badge1.png"),
                        Image.asset("assets/images/badge1.png"),
                        Image.asset("assets/images/badge1.png")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
