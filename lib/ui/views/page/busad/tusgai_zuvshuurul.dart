import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/views/page/busad/erdes_baylag_mergejliin_zuvluh.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';



import '../../main.dart';



class TusgaiZuvshuurul extends StatefulWidget {
  @override
  _TusgaiZuvshuurulState createState() => _TusgaiZuvshuurulState();

}
class _TusgaiZuvshuurulState extends State<TusgaiZuvshuurul> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;



  List<TusgaiZovshoorol$Query$Paginate$AaTusgaiZovshoorol> tusgai_zuvshuurul = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(TusgaiZovshoorolQuery(variables: TusgaiZovshoorolArguments(page: page, size: 4)));
    setState(() {
      tusgai_zuvshuurul = response.data.paginate.aaTusgaiZovshoorol;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(tusgai_zuvshuurul);
    });
  }


  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
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
          title: "БУСАД / Тусгай зөвшөөрөл",
          scaffold: _scaffoldKey,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onButtonPressed(),
        child: Icon(Feather.getIconData('search')),
        backgroundColor: mainColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        // child: ListView.builder(
        //   itemCount: tusgai_zuvshuurul == null ? 0 : tusgai_zuvshuurul.length,
        //   itemBuilder: (BuildContext context, int index) =>
        //       buildTripCard(context, index),
        // ),
      ),
    );

  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Тусгай зөвшөөрөл '),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Сонгон шалгаруулалт'),
                        ),
                        FlatButton(
//                      onPressed: () => _onButtonDeDtses(),
                          onPressed: (){},
                          child: Text('- Эрдэс баялаг мэргэжлийн зөвлөл'),
                        ),
                        FlatButton(
                          onPressed: (){},
                          child: Text('- Ажиллах хүчний мэдээлэл'),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
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
                                borderRadius:
                                BorderRadius.circular(4)),
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
                        )
                    )
                  ],
                ),
              ],
            ),

          ),
        );
      });
    });
  }

//   Widget buildTripCard(BuildContext context, int index) {
//     final tusgai = tusgai_zuvshuurul[index];
//
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.only(top: 5.0),
//       margin: EdgeInsets.only(bottom: 0.0),
//       child: Card(
//         elevation: 2.0,
//         child: Container(
//           padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
//           decoration: BoxDecoration(
//             border: Border(
//               top: BorderSide(width: 1.0, color: Colors.grey[300]),
//             ),
//             color: Colors.white,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: <Widget>[
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Expanded(flex: 2, child: Container(width: 80.0, child: Image.asset('assets/uuhvy_img/uurkhai.png', height: 100,  fit: BoxFit.cover))),
//                       Expanded(flex: 4,
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(height: 10),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Expanded(flex: 4, child: Text('Аж ахуй нэгж:', style: TextStyle(color: textColor, fontSize: 12),)),
//                                   //Expanded(flex: 4, child: Text(tusgai.ajAhuiNegj, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                                   Expanded(flex: 4, child: Text('test', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                                 ],
//                               ),
//                               SizedBox(height: 4),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Expanded(flex: 4, child: Text('Регистр:', style: TextStyle(color: textColor, fontSize: 12),)),
//                                   Expanded(flex: 4, child: Text(tusgai., style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                                 ],
//                               ),
//                               SizedBox(height: 4),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Expanded(flex: 4, child: Text('Байгуулагдсан огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
//                                   Expanded(flex: 4, child: Text(tusgai.baiguulagdsanOgnoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                                 ],
//                               ),
//                               SizedBox(height: 4),
//                             ],
//                           ),
//
//                         ),
//                       ),
//                     ],
//                   ),
// //
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Expanded(flex: 4,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Expanded(flex: 4, child: Text('Захирлын нэр:', style: TextStyle(color: textColor, fontSize: 12),)),
//                             Expanded(flex: 4, child: Text(tusgai.zahiral, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           ],
//                         ),
//                       ),
//                       Expanded(flex: 4,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Expanded(flex: 4, child: Text('Захирлын утас:', style: TextStyle(color: textColor, fontSize: 12),)),
//                             Expanded(flex: 4, child: Text(tusgai.zahiral_utas, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 10.0),
//                 ],
//               ),
//
//               ExpansionTile(
// //                 backgroundColor: Colors.grey[50],
//                 title: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: <Widget>[
//                     Text('Тусгай зөвшөөрөл', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
//                   ],
//                 ),
//                 children: <Widget>[
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(flex: 1, child: Text('', style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text('Дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text(tusgai.dugaar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text('Төрөл:', style: TextStyle(color: textColor, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text(tusgai.turul, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text('Бүтээгдэхүүний төрөл:', style: TextStyle(color: textColor, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text(tusgai.bvteegdehuunTurul, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text('Олгосон огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text(tusgai.olgosonOgnoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                         ],
//                       ),
//                       SizedBox(height: 4),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Expanded(flex: 1, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text('Дуусах огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
//                           Expanded(flex: 4, child: Text(tusgai.duusahOgnoo, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
//                         ],
//                       ),
//                       SizedBox(height: 10.0),
//                     ],
//                   ),
//
//
//                 ],
//
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
}







