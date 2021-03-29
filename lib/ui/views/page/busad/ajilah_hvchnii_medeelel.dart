import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:flutter_icons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:lambda/utils/number.dart';
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
import 'search_busad.dart';

class zarlaga{
  final String AAN;
  final String chiglel;
  final String medeelel;
  final String country;
  final String ajillahHvchniiToo;
  zarlaga(
      this.AAN,
      this.chiglel,
      this.medeelel,
      this.country,
      this.ajillahHvchniiToo,
      );
}

class AjillahHvch extends StatefulWidget {
  @override
  _AjillahHvchState createState() => _AjillahHvchState();

}
class _AjillahHvchState extends State<AjillahHvch> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();


  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;

  List<AjilahHuchMedeelel$Query$Paginate$DsAjilahHuchMedeelel> aj_huch_med = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(AjilahHuchMedeelelQuery(variables: AjilahHuchMedeelelArguments(page: page, size: 10)));
    setState(() {
      aj_huch_med = response.data.paginate.dsAjilahHuchMedeelel;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(aj_huch_med);
    });
  }



  /*--------------------------------------------------------------------------------------------------*/
  /*--------------------------------------------------------------------------------------------------*/

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
          title: "БУСАД / Ажиллах хүчний мэдээлэл",
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
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder:  ListView.builder(
              itemCount: aj_huch_med == null ? 0 : aj_huch_med.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildTripCard(context, index),
            ),
          ),
        )

    );

  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: searchBusad(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    //final zarlaga = zarlaguud[index];
    final aj_huch_med_i = aj_huch_med[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 10.0, left: 10.0),
      padding: const EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Аж ахуй нэгж:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.ajAhuiNerId, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Үйл ажиллагааны чиглэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 15.0),
              Text(aj_huch_med_i.medeelel, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Ажиллах хүч авах улс:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(aj_huch_med_i.uls, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(flex: 3, child: Text('Ажиллах хүчний тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 4, child: Text(number(aj_huch_med_i.huchToo), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),


        ],
      ),

    );
  }
}







