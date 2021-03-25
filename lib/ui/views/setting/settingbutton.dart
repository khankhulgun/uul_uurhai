import 'package:flutter/material.dart';
import 'dart:async';
import 'package:catalog/ui/styles/_colors.dart';



class settingbutton extends StatefulWidget {
  @override
  _loginbuttonState createState() => _loginbuttonState();
}

class _loginbuttonState extends State<settingbutton> with SingleTickerProviderStateMixin{
  bool _isPressed = false;
  int state = 0;
  double width = double.infinity;
  Animation _animation;
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
        color: Color.fromRGBO(255, 190, 171,  1),
        elevation: _isPressed ? 0.0 : 0.0,
        borderRadius: BorderRadius.circular(100.0),
        child: Container(
          key: globalKey,
          height: 48.0,
          width: width,
          child: RaisedButton(
            padding: EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            color: state == 2 ? primaryColor : primaryColor,
            child: builButtonChild(),
            onPressed: (){

            },
            onHighlightChanged: (isPressed){
              setState(() {
                _isPressed = isPressed;
                if(state == 0){
                  animateButton();
                }
              });
            },
          ),
        )
    );
  }

  void animateButton(){
    double initialWidth =  globalKey.currentContext.size.width;

    var controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0)
        .animate(controller)
      ..addListener((){
        setState(() {
          width = initialWidth - ((initialWidth - 48.0) * _animation.value);
        });
      });
    controller.forward();

    setState(() {
      state = 1;
    });

    Timer(Duration(milliseconds: 2000), (){
      setState(() {
        state = 2;
      });
    });
  }

  Widget builButtonChild(){
    if(state == 0){
      return Text('Солих', style: TextStyle(color: Colors.white, fontSize: 18.0),);
    }else if (state == 1){
      return SizedBox(
          height: 30.0,
          width: 30.0,
          child: CircularProgressIndicator(
              value:  null, valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
      );
    }else{
      return  Icon(Icons.check, color: Colors.white);
    }
  }
}
