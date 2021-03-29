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


class Mbank extends StatefulWidget {
  @override
  _MbankState createState() => _MbankState();

}
class _MbankState extends State<Mbank> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;
  List<MBankHudaldanAvalt$Query$Paginate$DsMBankHudaldanAvalt> mbhud_avalt = [];

  @override
  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(MBankHudaldanAvaltQuery(variables: MBankHudaldanAvaltArguments(page: page, size: 10)));
    setState(() {
      mbhud_avalt = response.data.paginate.dsMBankHudaldanAvalt;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(mbhud_avalt);
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
          title: "СТАТИСТИК / МБ-ны худалдан авалт",
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
            itemCount: mbhud_avalt == null ? 0 : mbhud_avalt.length,
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
          child: searchStatistic(),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final mbhud_avalt_i = mbhud_avalt[index];
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
                            Expanded(flex: 4, child: Text(date(mbhud_avalt_i.ognoo), style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                            Expanded(flex: 3,child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 4, child: Text('Бүтээгдэхүүн:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 3,child: Text(mbhud_avalt_i.ashigtMaltmal, style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 4, child: Text('Олборлолтын хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 3, child: Text('${mbhud_avalt_i.hAvsanHemjee}', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 4, child: Text('Олборлолтын хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 3, child: Text('', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(flex: 4, child: Text('Эх сурвалж:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 3, child: InkWell( onTap: () {
                              _launchURL('${mbhud_avalt_i.survalj}');
                              //_launchURL('${_http.dio.options.baseUrl}${law.file}');
                            }, child: Text(mbhud_avalt_i.survalj, style: TextStyle(fontSize: 12, color: Color(0xff80aae8), fontWeight: FontWeight.w500)))),
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







