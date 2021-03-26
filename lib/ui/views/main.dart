import 'package:flutter/material.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/sidebar.dart';
import 'package:flutter/rendering.dart';

class statistic {
  final String title;

  statistic(
    this.title,
  );
}

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  final List<statistic> statistics = [
    statistic(
      "Экспортын мэдээ",
    ),
    statistic(
      "Олборлолтын мэдээ",
    ),
    statistic(
      "МБ-ны худалдан авалт",
    ),
  ];

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
          title: "УУЛ УУРХАЙ, ХҮНД ҮЙЛДВЭРИЙН ЯАМ",
          scaffold: _scaffoldKey,

        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () => _onButtonPressed(),
//        child: Icon(Feather.getIconData('search')),
//        backgroundColor: mainColor,
//      ),

      body: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 6, right: 10, left: 10, bottom: 10),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: statistics.length,
            padding: EdgeInsets.all(0.0),
            itemBuilder: (BuildContext context, int index) =>
                buildTripCard(context, index),
          )),

//      body: Container(
//          margin: EdgeInsets.only(top: 6, right: 10, left: 10, bottom: 10),
//          padding: EdgeInsets.all(0.0),
//
//          child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Expanded(
//                      child: Container(
//                        width: MediaQuery.of(context).size.width,
//                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
//                        child: Text('Экспортын мэдээ', style: TextStyle(color: textColor, fontSize: 14),)
//                      ),
//                    ),
//                    Expanded(
//                      child: Container(
//                        width: MediaQuery.of(context).size.width,
//                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
//                        child: Text('2020-12-11 ~ 12-18', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14),),
//                      ),
//                    ),
//                  ],
//                ),
//                SizedBox(height: 10),
//                Container(
//                  height: 200,
//                  color: Colors.grey[200],
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('НҮҮРС', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Expanded(
//                                      flex: 4,
//                                      child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                  ),
//                                  Expanded(
//                                      flex: 4,
//                                      child: Padding(
//                                        padding: const EdgeInsets.only(top: 6.0),
//                                        child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                      ),
//                                  ),
//                                ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('ЗЭСИЙН БАЯЖМАЛ', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('ТӨМРИЙН ХҮДЭР', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  height: 200,
//                  color: Colors.grey[200],
//                ),
//              ]
//          )
//      ),
    );
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (
          context,
        ) {
          return StatefulBuilder(builder:
              (BuildContext context, StateSetter setStateOfBottomSheet) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: Container(
                        padding: EdgeInsets.only(top: 7.0),
                        margin: EdgeInsets.only(right: 5.0),
                        height: 42.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(8),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(4)),
                            labelText: 'Хайх',
                            //  labelStyle: TextStyle(color:primaryColor),
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(147, 157, 186, .78),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 1)),
                            errorStyle: TextStyle(height: 0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: MaterialButton(
                          height: 34.0,
                          padding: EdgeInsets.all(0.0),
                          color: mainColor,
                          textColor: Colors.white,
                          child: new Text(
                            "Хайх",
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
//                      setStateOfBottomSheet(() {
//                        this.saveData(true);
//                      });
                          },
                        ))
                  ],
                ),
              ),
            );
          });
        });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final statistic = statistics[index];
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Text(
                        statistics[index].title.toUpperCase(),
                        style: TextStyle(color: textColor, fontSize: 14),
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        '2020-12-11 ~ 12-18',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: textColor, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 220,
                color: Colors.grey[200],
                child: Image.asset('assets/uuhvy_img/chart.png',
                    height: 220, fit: BoxFit.contain),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'НҮҮРС',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ЗЭСИЙН БАЯЖМАЛ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textOrange,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textOrange,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ТӨМРИЙН ХҮДЭР',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textBlueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textBlueGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 220,
                color: Colors.grey[200],
                child: SvgPicture.asset('assets/uuhvy_img/chart1.svg',
                    height: 220, fit: BoxFit.contain),
              ),
            ]),
      ),
    );
  }
}
