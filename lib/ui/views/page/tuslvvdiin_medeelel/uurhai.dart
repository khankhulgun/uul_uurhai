import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:lambda/utils/number.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'package:http/http.dart' as http;


//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/tusulvvdiin_medeelel.dart';

import 'search_t_m.dart';


class Uurhai extends StatefulWidget {
  @override
  _UurhaiState createState() => _UurhaiState();

}
class _UurhaiState extends State<Uurhai> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  List<OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai> olborlolt = [];
  List<OlborloltUurkhai$Query$Paginate$DsOlborloltUurkhai$DsSubOlborlolt> sub = [];
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  @override
  void initState() {
    super.initState();
    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(OlborloltUurkhaiQuery(variables: OlborloltUurkhaiArguments(page: page, size: 10)));
    setState(() {
      olborlolt = response.data.paginate.dsOlborloltUurkhai;
      //sub = response.data.paginate.DsSubOlborlolt;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
      // print(olborlolt["dsSubolborlolt"]);
    });
  }

  bool _isVisible = false;

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
          title: "ТӨСЛҮҮДИЙН МЭДЭЭЛЭЛ / Уурхай",
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
          padding: EdgeInsets.all(0.0),
          height: double.infinity,
          //margin: EdgeInsets.only(bottom: 40),
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: olborlolt == null ? 0 : olborlolt.length,
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
          child: searchTuslvvdiinMedeelel(),
        );
      });
    });
  }


  Widget buildTripCard(BuildContext context, int index) {
    final uurhai = olborlolt[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 0.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey[300]),
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
                      Expanded(flex: 2, child: Container(width: 80.0, child: Image.asset('assets/uuhvy_img/uurhai.png', height: 100,  fit: BoxFit.cover))),
                      Expanded(flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text(uurhai.uurkhainNer, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 14),),
                                 SizedBox(height: 10),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Expanded(flex: 4, child: Text('Аймаг / Нийслэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                                     Expanded(flex: 4, child: Text(uurhai.aimagname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                   ],
                                 ),
                                 SizedBox(height: 4),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Expanded(flex: 4, child: Text('Сум / Дүүрэг:', style: TextStyle(color: textColor, fontSize: 12),)),
                                     Expanded(flex: 4, child: Text(uurhai.sumname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                   ],
                                 ),
                                 SizedBox(height: 4),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: <Widget>[
                                     Expanded(flex: 4, child: Text('Баг / Хороо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                     Expanded(flex: 4, child: Text(uurhai.bagname, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                   ],
                                 ),
                                 SizedBox(height: 4),
                               ],
                            ),

                          ),
                      ),
                    ],
                  ),
//
                ],
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.all(0.0),
                  childrenPadding: EdgeInsets.all(0.0),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Олборлолт', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    olborlolt.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: olborlolt[index].dsSubOlborlolt == null ? 0 : olborlolt[index].dsSubOlborlolt.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(flex: 1, child: Text(olborlolt[index].dsSubOlborlolt[index].torol, textAlign: TextAlign.center, style: TextStyle(color: mainColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                  SizedBox(width: 10),
                                  Expanded(flex: 5,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Олборлолт эхэлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text(olborlolt[index].dsSubOlborlolt[index].oEhelsenOn, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('ТЭЗҮ батлагдсан огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text(olborlolt[index].dsSubOlborlolt[index].tezuBOn, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Батлагдсан нөөц:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${olborlolt[index].dsSubOlborlolt[index].bNoots}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Хүчин чадал:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${olborlolt[index].dsSubOlborlolt[index].oHuchChadal}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                        SizedBox(height: 4),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(flex: 5, child: Text('Ажилчдын тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
                                            Expanded(flex: 3, child: Text('${olborlolt[index].dsSubOlborlolt[index].ajilchinToo}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.0),
                              // Container(
                              //   width: MediaQuery.of(context).size.width,
                              //   //child: Image.network(olborlolt[index].dsSubOlborlolt[index].zurag, fit: BoxFit.cover),
                              //     child: Image.network(
                              //       "https://app.mmhi.gov.mn/" +olborlolt[index].dsSubOlborlolt[index].zurag,
                              //       fit: BoxFit.cover,
                              //     ),
                              //
                              // )
                            ],
                          );
                        }
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







