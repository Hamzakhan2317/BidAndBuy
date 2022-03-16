import 'package:bid_to_buy/Screens/Home/home_screen.dart';
import 'package:bid_to_buy/res/res.dart';
import 'package:bid_to_buy/res/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignOutConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth() * .02, vertical: 50),
            child: Text(
              "Want to sign out?",
            )),
        Row(children: [
          Expanded(
              child: InkWell(
            onTap: () async {
              await PreferenceUtils.clearPreferences();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false);
            },
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(10))),
              child: Text('YES',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(10))),
                child: Text('NO', style: TextStyle(color: Colors.white))),
          )),
        ]),
      ]),
    );
  }
}
