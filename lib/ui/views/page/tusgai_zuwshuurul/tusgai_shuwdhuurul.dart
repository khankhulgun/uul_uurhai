import 'package:catalog/graphql/config.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';

import 'package:catalog/graphql/queries/tzAndSongon.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';


class newTusgaiZuvshuurul extends StatefulWidget {
  @override
  _newTusgaiZuvshuurulState createState() => _newTusgaiZuvshuurulState();
}

class _newTusgaiZuvshuurulState extends State<newTusgaiZuvshuurul> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  List<TzAndSongon$Query$AaTusgaiZovshoorol> datas = [];
  bool loading = true;
  @override
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
      datas = response.data.aaTusgaiZovshoorol;
      loading = false;
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
            title: "Тусгай зөвшөөрөл",
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
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               children: [
                                 Text('НИЙТ:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                 SizedBox(width: 4,),
                                 Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                               ],
                             ),
                             SizedBox(height: 20,),
                             Center(child: Text(number(datas[0].tzToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600)))
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

                                 Text('Талбайн хэмжээ\n/мян.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                 SizedBox(height: 5,),
                                 Text(number(datas[0].tHemjeeSay), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                               ],
                             ),
                           )
                       ),
                       Expanded(
                           flex: 4,
                           child: Column(
                             children: [

                               Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                               SizedBox(height: 5,),
                               Text(number(datas[0].niitGazarHuvi)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                             ],
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
                             Row(
                               children: [
                                 Text('Ашиглалт:'.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                 SizedBox(width: 4,),
                                 Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                               ],
                             ),
                             SizedBox(height: 20,),
                             Center(child: Text(number(datas[0].aTToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
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

                               Text('Талбайн хэмжээ\n/мян.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                               SizedBox(height: 5,),
                               Text(number(datas[0].aTZovshoorol), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                             ],
                           ),
                         )
                     ),
                     Expanded(
                         flex: 4,
                         child: Column(
                           children: [

                             Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                             SizedBox(height: 5,),
                             Text(number(datas[0].ashiglatTzHuvi)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                           ],
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
                             Row(
                               children: [
                                 Text('Хайгуул:'.toUpperCase(), style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                 SizedBox(width: 4,),
                                 Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                               ],
                             ),
                             SizedBox(height: 20,),
                             Center(child: Text(number(datas[0].htZovshoorol), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
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

                               Text('Талбайн хэмжээ\n/мян.га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                               SizedBox(height: 5,),
                               Text(number(datas[0].haiguulTZ), textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                             ],
                           ),
                         )
                     ),
                     Expanded(
                         flex: 4,
                         child: Column(
                           children: [

                             Text('Нутаг дэвсгэрт\nэзлэх хувь', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                             SizedBox(height: 5,),
                             Text(number(datas[0].haiguulHuvi)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
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
                       Text('Тусгай зөвшөөрөл ', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                       
                     ],
                   )
               ),
             ],
           ),
        )
    );
  }
}
