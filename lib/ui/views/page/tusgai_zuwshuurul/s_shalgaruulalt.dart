import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:catalog/graphql/config.dart';

import 'package:catalog/graphql/queries/tzAndSongon.dart';

class newSShalgaruulalt extends StatefulWidget {
  @override
  _newSShalgaruulaltState createState() => _newSShalgaruulaltState();
}

class _newSShalgaruulaltState extends State<newSShalgaruulalt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<TzAndSongon$Query$AaSongonShalgaruulalt> datas = [];
  bool loading = true;

  void initState() {
    super.initState();
    this.getData();
  }

  void getData() async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(TzAndSongonQuery());
    setState(() {
      datas = response.data.aaSongonShalgaruulalt;
      loading = false;
      print('------');
      print(datas);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        drawer: Drawer(
          elevation: 5,
          child: SidebarScreen(),
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Header(
            title: "Сонгон шалгаруулалт",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(231, 240, 254, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                                //left: BorderSide(color: Colors.grey[400], width: 0.5),
                                right: BorderSide(color: Colors.grey[400], width: 0.5)
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Дугаар:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                  SizedBox(width: 4,),
                                  Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                                ],
                              ),
                              SizedBox(height: 18,),
                              Center(child: Text(number(datas[0].sShBagts), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600)))
                            ],
                          ),
                        )
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Text('Талбайн тоо', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                              SizedBox(height: 18,),
                              Text(number(datas[0].sShTalbai), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                            ],
                          ),
                        )
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.grey[400], width: 0.5),
                                //ight: BorderSide(color: Colors.grey[400], width: 0.5)
                            ),
                          ),
                          child: Column(
                            children: [

                              Text('Зарласан талбайн хэмжээ /га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                              SizedBox(height: 5,),
                              Text(number(datas[0].sShHemjeeGa), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 243, 243, 1),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ОЛГОСОН:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                            Text('Тусгай зөвшөөрөл', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                            SizedBox(height: 15,),
                            Center(child: Text(number(datas[0].ologsonZToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
                          ],
                        )
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(color: Colors.grey[400], width: 0.5),
                                right: BorderSide(color: Colors.grey[400], width: 0.5)
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Төсөвт төвлөрүүлсэн\nорлого тэрбум/төг', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black54, fontWeight: FontWeight.w500)),
                              SizedBox(height: 18,),
                              Text(number(datas[0].ulsTosovTerbum), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                            ],
                          ),
                        )
                    ),
                    Expanded(
                        flex: 4,
                        child: Column(
                          children: [

                            Text('Олгосон талбайн\nхэмжээ /га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                            SizedBox(height: 16,),
                            Text(number(datas[0].ologsonHegmjeeGa)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Сонгон шалгаруулалт, олголт', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        color: Colors.grey[400],
                        height: 300,
                      )
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }
}
