import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';

import 'package:catalog/ui/views/main.dart';
import 'package:lambda/modules/agent/agent_util.dart';
import 'package:catalog/core/models/user.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/core/viewmodels/user_model.dart';
import 'package:catalog/ui/animation/animation.dart';
import 'package:provider/provider.dart';
import 'package:catalog/core/viewmodels/map_model.dart';
import 'package:catalog/core/models/map_data.dart';

class SidebarScreen extends StatefulWidget {
  @override
  _SidebarScreenState createState() => _SidebarScreenState();
}

class _SidebarScreenState extends State<SidebarScreen> {
  AgentUtil agentUtil = new AgentUtil();

  User user;

  bool isAuth = false;
  String userTitle = "";

  @override
  void initState() {
    super.initState();
    this.checkAuth();
  }

  void checkAuth() async {
    isAuth = await agentUtil.checkAuth() ?? false;
//    print("====================================================");
//    print(isAuth);
//    print("====================================================");
    if (isAuth) {
      final userState = Provider.of<UserModel>(context, listen: false);
      var user__ = userState.getUser;

      String userTitle_ = "";

      if (user__.districtId >= 1 && user__.regionId >= 1) {
        var preDistrict = getDistrictByID(user__.districtId);
        var preRegion = getRegionByID(user__.regionId);

        if (preDistrict != null && preRegion != null) {
          setState(() {
            isAuth = true;
            userTitle =
            'Улаанбаатар хот, ${preDistrict.nameMn}  дүүрэг, ${preRegion.name} дугаар хорооны мэргэжилтэн';
          });
        }
      } else {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  Districts getDistrictByID(int id) {
    final mapData = Provider.of<MapDataModel>(context, listen: false);
    var index =
    mapData.mapData.districts.indexWhere((district) => district.id == id);
    Districts DistrictsNull;
    if (index >= 0) {
      return mapData.mapData.districts[index];
    } else {
      return DistrictsNull;
    }
  }
  Regions getRegionByID(int id) {
    final mapData = Provider.of<MapDataModel>(context, listen: false);
    var index = mapData.mapData.regions.indexWhere((region) => region.id == id);
    Regions RegionsNull;
    if (index >= 0) {
      return mapData.mapData.regions[index];
    } else {
      return RegionsNull;
    }
  }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final userState = Provider.of<UserModel>(context, listen: false);
    user = userState.getUser;
    return Container(
      width: double.infinity,
      height: double.infinity,
//      decoration: BoxDecoration(
////        color: primaryColor.withOpacity(.6),
//        image: DecorationImage(
//            image: AssetImage('assets/images/ub.png'),
//            fit: BoxFit.scaleDown,
//            alignment: Alignment.bottomLeft),
//      ),
      child: Material(
        color: Color.fromRGBO(255, 255, 255, .25),
        child: Container(
//            decoration: BoxDecoration(
//                color: mainColor
//            ),
            child: Column(

              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 2,
                            margin: const EdgeInsets.only(top: 200),
                            decoration: BoxDecoration(color: mainColor),
                          ),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/uuhvy_img/menu.png'),
                                  fit: BoxFit.fitWidth,
                                )),
//                          child: Container(
//                            decoration: BoxDecoration(
//                              color: Color.fromRGBO(23, 61, 156, 0.6),
//                            ),
//                          )
                          ),
                          Positioned(
                            top: 35.0,
                            left: 50,
                            width: 200,
                            child: DownAnimation(
                              0.2,
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 50,
//                                   margin: const EdgeInsets.only(
//                                       top: 20, left: 10, right: 10),
                                      decoration: BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                              "assets/uuhvy_img/yam.png"),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      width: 160,
                                      child: Center(child: Text('УУЛ УУРХАЙ \n ХҮНД ҮЙЛДВЭРИЙН ЯАМ',textAlign: TextAlign.center, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: mainColor))),
                                    )
                                  ],
                                ),
                              ),
//                          Container(
//                            height: 70,
//                            margin: const EdgeInsets.only(
//                                top: 20, left: 10, right: 10),
//                            decoration: BoxDecoration(
//                              image: new DecorationImage(
//                                image: new AssetImage(
//                                    "assets/uuhvy_img/yam.png"),
//                                fit: BoxFit.contain,
//                              ),
//                            ),
//                          )
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          child: ListView(
                            children: <Widget>[
                              Container(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) => mainScreen()));
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(EsriIcons.home,
                                        color: Color(0xff363636),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Нүүр',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff363636),
                                              fontWeight: FontWeight.w500)
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/shuurhai');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(EsriIcons.notice_round,
                                        color: Color(0xff363636),),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Шуурхай ажил',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff363636),
                                              fontWeight: FontWeight.w500)
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 54,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/news');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(EsriIcons.documentation,
                                          color: Color(0xff363636)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Мэдээ мэдээлэл',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff363636),
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(context, '/hutulbur');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(EsriIcons.layer_list,
                                          color: Color(0xff363636)),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Хөтөлбөр',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xff363636),
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                ),
                              ),
                              Container(
//                            height: 44,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/baiguullaga');
                                  },
                                  child: ListTileTheme(
                                    child: ExpansionTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(EsriIcons.labels,
                                              color: Color(0xff363636)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Хууль тогтоомж',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff363636),
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                      children: <Widget>[
                                        Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                          Navigator.pushNamed(context, '/mgl');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Монгол улсын хууль',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                        Navigator.pushNamed(context, '/hural');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Улсын их хурлын тогтоол',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/bodlogo_b_b');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Бодлогын баримт бичиг',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/law');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Засгийн газрын тогтоол',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                        Navigator.pushNamed(context, '/dvrem');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Дүрэм, журам',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
//                               Container(
// //                            height: 44,
//                                 padding: EdgeInsets.all(0.0),
//                                 margin: EdgeInsets.all(0.0),
//                                 child: FlatButton(
//                                   padding: EdgeInsets.all(0.0),
//                                   onPressed: () {
//                                     Navigator.pushNamed(context, '/baiguullaga');
//                                   },
//
//                                   child: ListTileTheme(
//
//                                     child: ExpansionTile(
//
//                                       title: Row(
//                                         mainAxisAlignment: MainAxisAlignment.start,
//                                         children: <Widget>[
//                                           Icon(EsriIcons.chart,
//                                               color: Color(0xff363636)),
//                                           SizedBox(
//                                             width: 10,
//                                           ),
//                                           Text('Статистик мэдээ',
//                                               style: TextStyle(
//                                                   fontSize: 14,
//                                                   color: Color(0xff363636),
//                                                   fontWeight: FontWeight.w500)),
//                                         ],
//                                       ),
//                                       children: <Widget>[
//                                         Container(
//                                             alignment: Alignment.topLeft,
//                                             padding: const EdgeInsets.only(left: 25.0),
//                                             child: Column(
//                                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: <Widget>[
//                                                 Container(
//                                                   height: 32,
//                                                   child: FlatButton(
//                                                     padding: EdgeInsets.all(0.0),
//                                                     onPressed: () {
//                                                       Navigator.pushNamed(context, '/export');
//                                                     },
//                                                     child: Row(
//                                                       children: <Widget>[
//                                                         Text('- Экспортын мэдээ',
//                                                             style: TextStyle(
//                                                                 fontSize: 14,
//                                                                 color: Color(0xff363636),
//                                                                 fontWeight: FontWeight.w500))
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   height: 32,
//                                                   child: FlatButton(
//                                                     padding: EdgeInsets.all(0.0),
//                                                     onPressed: () {
//                                                       Navigator.pushNamed(context, '/olborlolt');
//                                                     },
//                                                     child: Row(
//                                                       children: <Widget>[
//                                                         Text('- Олборлолтын мэдээ',
//                                                             style: TextStyle(
//                                                                 fontSize: 14,
//                                                                 color: Color(0xff363636),
//                                                                 fontWeight: FontWeight.w500))
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   height: 32,
//                                                   child: FlatButton(
//                                                     padding: EdgeInsets.all(0.0),
//                                                     onPressed: () {
//                                                       Navigator.pushNamed(context, '/mbank');
//                                                     },
//                                                     child: Row(
//                                                       children: <Widget>[
//                                                         Text('- Монгол банкны худалдан авалт',
//                                                             style: TextStyle(
//                                                                 fontSize: 14,
//                                                                 color: Color(0xff363636),
//                                                                 fontWeight: FontWeight.w500))
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   height: 32,
//                                                   child: FlatButton(
//                                                     padding: EdgeInsets.all(0.0),
//                                                     onPressed: () {
//                                                       Navigator.pushNamed(context, '/taamag');
//                                                     },
//                                                     child: Row(
//                                                       children: <Widget>[
//                                                         Text('- Таамаг үнэ',
//                                                             style: TextStyle(
//                                                                 fontSize: 14,
//                                                                 color: Color(0xff363636),
//                                                                 fontWeight: FontWeight.w500))
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 SizedBox(height: 10.0,),
//                                               ],
//                                             )
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
                              Container(
//                            height: 44,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
//                                Navigator.pushNamed(context, '/baiguullaga');
                                  },
                                  child: ListTileTheme(
                                    child: ExpansionTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(EsriIcons.line_chart,
                                              color: Color(0xff363636)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text('Хэрэгжилт гүйцэтгэл',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff363636),
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                        ],
                                      ),
                                      children: <Widget>[
                                        Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/bodlogo');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Бодлогын баримт бичиг',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/ih');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- УИХ-н тогтоолын хэрэгжилт',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/zg');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Засгийн газрын тогтоолын хэрэгжилт',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/ajiliinHeseg');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Ажлын хэсэг',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/HOTH');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Хөрөнгө оруулалтын төсөл, хөтөлбөр',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
//                            height: 44,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/baiguullaga');
                                  },
                                  child: ListTileTheme(
                                    child: ExpansionTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(EsriIcons.checkbox_checked,
                                              color: Color(0xff363636)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Text('Төсөв, Худалдан авах ажиллагаа',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xff363636),
                                                    fontWeight: FontWeight.w500)),
                                          ),
                                        ],
                                      ),
                                      children: <Widget>[
                                        Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/buy');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Худалдан авах ажиллагаа',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/orlogo');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Төсвийн орлого',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/zarlaga');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Төсвийн зарлага',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
//                            height: 44,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
//                                Navigator.pushNamed(context, '/baiguullaga');
                                  },
                                  child: ListTileTheme(
                                    child: ExpansionTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(EsriIcons.duplicate,
                                              color: Color(0xff363636)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Төслүүдийн мэдээлэл',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff363636),
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                      children: <Widget>[
                                        Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/uurhai');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Олборлолт явуулж байгаа уурхай ',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/vildver');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Үйлдвэр',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
//                            height: 44,
                                child: FlatButton(
                                  padding: EdgeInsets.all(0.0),
                                  onPressed: () {
//                                Navigator.pushNamed(context, '/baiguullaga');
                                  },
                                  child: ListTileTheme(
                                    child: ExpansionTile(
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(EsriIcons.minimize,
                                              color: Color(0xff363636)),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text('Бусад',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xff363636),
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                      children: <Widget>[
                                        Container(
                                            alignment: Alignment.topLeft,
                                            padding: const EdgeInsets.only(left: 25.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                // Container(
                                                //   height: 32,
                                                //   child: FlatButton(
                                                //     padding: EdgeInsets.all(0.0),
                                                //     onPressed: () {
                                                //       Navigator.pushNamed(context, '/tusgai');
                                                //     },
                                                //     child: Row(
                                                //       children: <Widget>[
                                                //         Text('- Тусгай зөвшөөрөл ',
                                                //             style: TextStyle(
                                                //                 fontSize: 14,
                                                //                 color: Color(0xff363636),
                                                //                 fontWeight: FontWeight.w500))
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                // Container(
                                                //   height: 32,
                                                //   child: FlatButton(
                                                //     padding: EdgeInsets.all(0.0),
                                                //     onPressed: () {
                                                //       Navigator.pushNamed(context, '/songonShalgaruulaltgon');
                                                //     },
                                                //     child: Row(
                                                //       children: <Widget>[
                                                //         Text('- Сонгон шалгаруулалт',
                                                //             style: TextStyle(
                                                //                 fontSize: 14,
                                                //                 color: Color(0xff363636),
                                                //                 fontWeight: FontWeight.w500))
                                                //       ],
                                                //     ),
                                                //   ),
                                                // ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/ebmz');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Эрдэс баялаг мэргэжлийн зөвлөл',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 32,
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0.0),
                                                    onPressed: () {
                                                      Navigator.pushNamed(context, '/ajillahHvch');
                                                    },
                                                    child: Row(
                                                      children: <Widget>[
                                                        Text('- Гадаадаас авах ажиллах хүч',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(0xff363636),
                                                                fontWeight: FontWeight.w500))
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10.0,),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 44,
                                child: FlatButton(
                                  onPressed: () async {
                                    await agentUtil.logout();
                                    Navigator.pushReplacementNamed(
                                        context, '/login');
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        EsriIcons.sign_out,
                                        color: Color(0xff363636),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('Гарах',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff363636),
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                ),
                              ),
//                          isAuth
//                              ? Container(
//                                  height: 225,
//                                  padding: EdgeInsets.only(left: 20, top: 20),
//                                  child: Column(
//                                    children: <Widget>[
//                                      Container(
//                                        padding: EdgeInsets.only(bottom: 5),
//                                        margin: EdgeInsets.only(right: 30),
//                                        decoration: BoxDecoration(
//                                            border: Border(
//                                          bottom: BorderSide(
//                                            color: primaryColor,
//                                            width: 1.4,
//                                          ),
//                                        )),
//                                        child: Row(
//                                          children: <Widget>[
//                                            Text(
//                                                user.lastName +
//                                                    " " +
//                                                    user.firstName,
//                                                style: TextStyle(
//                                                    fontSize: 17,
//                                                    color: primaryColor,
//                                                    fontWeight:
//                                                        FontWeight.w700))
//                                          ],
//                                        ),
//                                      ),
//                                      SizedBox(
//                                        height: 10,
//                                      ),
//                                      Row(
//                                        crossAxisAlignment:
//                                            CrossAxisAlignment.start,
//                                        children: <Widget>[
//                                          Icon(
//                                              SimpleLineIcons.getIconData(
//                                                  'location-pin'),
//                                              size: 17,
//                                              color: secondaryColor),
//                                          SizedBox(
//                                            width: 10,
//                                          ),
//                                          Container(
//                                              width: 190,
//                                              child: Text(userTitle,
//                                                  style: TextStyle(
//                                                      fontSize: 14,
//                                                      color: Color(0xff363636),
//                                                      fontWeight:
//                                                          FontWeight.w500))),
//                                        ],
//                                      ),
//                                    ],
//                                  ))
//                              : Container(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(bottom: 0),
                        child: Text(
                          'Зохиогчийн эрх хуулиар хамгаалагдсан',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: borderColor),
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 25),
                        child: Text(
                          '© 2021. УУХҮЯ',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: borderColor),
                        )
                    )
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
