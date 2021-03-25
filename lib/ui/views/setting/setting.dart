import 'package:flutter/material.dart';
import 'package:catalog/ui/views/setting/settingbutton.dart';
import 'package:catalog/ui/styles/_colors.dart';

class Settings extends StatelessWidget {

  final TextStyle headerStyle = TextStyle(
    color:  Colors.black26,
//    fontWeight: FontWeight.bold,
    fontSize: 14.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Нууц үг солих',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            const SizedBox(height: 20.0),
            Center(
              child: Container(
                   height: 150,
                   child: Image.asset(
                      'assets/images/rotation-lock.png',
                      fit: BoxFit.cover,
                   ),

              ),
            ),


            const SizedBox(height: 20.0),
            Text(
              "Нууц үг",

            ),
            TextField(
              //style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                hintText: "*************",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                prefixIcon: const Icon(Icons.lock, color: primaryColor,),
                border: InputBorder.none,

              ),
            ),
            _buildDivider(),

            const SizedBox(height: 10.0),
            Text(
              "Шинэ нууц үг",

            ),
            TextField(

              obscureText: true,
              decoration: InputDecoration(
                hintText: "*************",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                prefixIcon: const Icon(Icons.lock, color: primaryColor,),
                border: InputBorder.none,

              ),
            ),
            _buildDivider(),
            const SizedBox(height: 10.0),
            Text(
              "Шинэ нууц үг давтах",
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "*************",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                prefixIcon: const Icon(Icons.lock, color: primaryColor,),
                border: InputBorder.none,

              ),
            ),
            _buildDivider(),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 32.0),
                child: settingbutton(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 0.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    );
  }
}
