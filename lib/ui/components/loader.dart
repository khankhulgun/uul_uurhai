import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xaaffffff)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SpinKitThreeBounce(
              color: Color(0xfff93702),
              size: 36.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'түр хүлээнэ үү...',
              style: TextStyle(color: Color(0xfff93702)),
            )
          ],
        ));
  }
}
