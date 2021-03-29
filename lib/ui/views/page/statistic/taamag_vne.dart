import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:lambda/modules/network_util.dart';
import '../../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;


//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/statistic_medee.dart';

import 'search_statistic.dart';

class TaamagVne extends StatefulWidget {
  @override
  _TaamagVneState createState() => _TaamagVneState();

}
class _TaamagVneState extends State<TaamagVne> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;
  List<TaamagUne$Query$Paginate$DsTaamagUne> taamag_vne = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
//    final response = await client.execute(AjilahHuchMedeelelQuery(variables: AjilahHuchMedeelelArguments(page: page, size: 10)));
    final response = await client.execute(TaamagUneQuery(variables:  TaamagUneArguments(page: page, size: 10)));
    setState(() {
      taamag_vne = response.data.paginate.dsTaamagUne;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(taamag_vne);
    });
  }
  bool _isExpanded = false;

  ///Toogle the box to expand or collapse
  void _toogleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
          title: "СТАТИСТИК / Таамаг үнэ",
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
            itemCount: taamag_vne == null ? 0 : taamag_vne.length,
            itemBuilder: (BuildContext context, int index) =>
                buildTripCard(context, index),
          ),
        ),
      ),
    );




  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context, builder: (context,) {
      return StatefulBuilder(builder:
          (BuildContext context, StateSetter setStateOfBottomSheet) {
        return SingleChildScrollView(
          child: searchStatistic(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final taamag_vne_i = taamag_vne[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.all(0.0),
        child: Container(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
            ),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(flex: 2, child: Text('Боомт:', style: TextStyle(color: textColor, fontSize: 12),)),
                  Expanded(flex: 5,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(flex: 4, child: Text(date(taamag_vne_i.ognoo), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                              Expanded(flex: 3,child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(flex: 4, child: Text('Бүтээгдэхүүн:', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 3,child: Text(taamag_vne_i.ashigtMaltmal, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(flex: 4, child: Text('Олборлолтын хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 3, child: Text('${taamag_vne_i.hNegjId}', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(flex: 4, child: Text('Тээврийн хэрэгсэл:', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 3, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(flex: 4, child: Text('Эх сурвалж:', style: TextStyle(color: textColor, fontSize: 12),)),
                              Expanded(flex: 3, child: InkWell( onTap: () {
                                _launchURL('${taamag_vne_i.survalj}');
                                //_launchURL('${_http.dio.options.baseUrl}${law.file}');
                              }, child: Text(taamag_vne_i.survalj, style: TextStyle(fontSize: 12, color: Color(0xff80aae8), fontWeight: FontWeight.w500)))),
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
      ),
    );
  }
}







