
import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:lambda/utils/number.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'package:http/http.dart' as http;

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/zg_hotolbor.dart';



import '../../../main.dart';


class ZGhutulbur extends StatefulWidget {
  @override
  _ZGhutulburState createState() => _ZGhutulburState();
}
class _ZGhutulburState extends State<ZGhutulbur> {
  //List<Project> projects = [];

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  //GRAPHQL Pagination

  List<ZgHotolbor$Query$Paginate$DsZgHotolbor> zghutulbur = [];
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
    final response = await client.execute(ZgHotolborQuery(variables: ZgHotolborArguments(page: page, size: 10)));
    setState(() {
      zghutulbur = response.data.paginate.dsZgHotolbor;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
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
          title: "ЗГ-н ҮЙЛ АЖИЛЛАГААНЫ ХӨТӨЛБӨР",
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
          height: double.infinity,
          padding: EdgeInsets.only(left: 0.0, right: 0.0),
          child: loading ? Loader() : Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: zghutulbur == null ? 0 : zghutulbur.length,
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 6,
                  child: Container(
                      height: 34.0,
                      child: TextFormField(
                        scrollPadding: EdgeInsets.all(0.0),
                        style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(68, 68, 68, 1), fontWeight: FontWeight.w400),
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(223, 223, 223, 1)),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(223, 223, 223, 1)),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.red)),
                            fillColor: Colors.red,
                            hintText: 'Хайх',
                            hintStyle: TextStyle(
                                color:
                                Color.fromRGBO(68, 68, 68, 1),
                                fontSize: 13,
                                fontWeight: FontWeight.w400)
                        ),
                      )
                  ),
                ),
                SizedBox(width: 4),
                Expanded(
                    flex: 2,
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
          ),
        );
      });
    });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final data = zghutulbur[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 0.0),
      child: Card(
        elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Expanded(
                          flex: 2,
                          child: Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.only(
                                   topLeft: Radius.circular(6),
                                   topRight: Radius.circular(6),
                                   bottomLeft: Radius.circular(6),
                                   bottomRight: Radius.circular(6)
                               ),
                             ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6.0),
                                  child: Image.asset("assets/uuhvy_img/new_zg.png",  fit: BoxFit.cover)
                              ),
                          )
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 4,
                        child: Text(data.zorilt,  style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        flex: 2,
                        child: CircularPercentIndicator(
                          radius: 55.0,
                          animationDuration: 1500,
                          lineWidth: 4.0,
                          animation: true,
                          percent: data.gHuvi != null ? data.gHuvi / 100 : 0,
                          //percent: 0.5,
                          center: Text(
                            '${data.gHuvi}%',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: data.gHuvi == 100 ? Color(0xFF00E676) : Color(0xfffcb85f),
                            ),
                          ),
                          footer: Text(
                            data.gHuvi == 100 ? 'Биелсэн' : 'Хэрэгжиж байна',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color:  data.gHuvi == 100 ? Color(0xFF00E676) : Color(0xfffcb85f)
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
//                            progressColor: currentProgressColor(),

                          progressColor: data.gHuvi == 100 ? Color(0xFF00E676) : Color(0xfffcb85f),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: RichText(
                      //textAlign: TextAlign.justify,
                      text: TextSpan(
                          children: [
                            TextSpan(text: 'Дэд зорилт: ', style: TextStyle(color: textColor, fontWeight: FontWeight.w600,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                            TextSpan(text: data.dedZorilt, style: TextStyle(color: textColor, fontWeight: FontWeight.w400,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: RichText(
                      //textAlign: TextAlign.justify,
                      text: TextSpan(
                          children: [
                            TextSpan(text: 'Хөтөлбөр: ', style: TextStyle(color: textColor, fontWeight: FontWeight.w600,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                            TextSpan(text: data.hotolbor, style: TextStyle(color: textColor, fontWeight: FontWeight.w400,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                          ]
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: RichText(
                      //textAlign: TextAlign.justify,
                      text: TextSpan(
                          children: [
                            TextSpan(text: 'Арга хэмжээ: ', style: TextStyle(color: textColor, fontWeight: FontWeight.w600,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                            TextSpan(text: data.argaHemjee, style: TextStyle(color: textColor, fontWeight: FontWeight.w400,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                          ]
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Хэрэгжих хугацаа:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.hugatsaa, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Эх үүсвэр:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.eUusver, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Нийт төсөв, сая.төг:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text('${data.niitTosov}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Суурь түвшин:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.suuriTuvshin, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(flex: 4, child: Text('Хэрэгжүүлэгч байгууллага:', style: TextStyle(color: textColor, fontSize: 12),)),
                      SizedBox(width: 4.0),
                      Expanded(flex: 4, child: Text(data.suuriTuvshin, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                    ],
                  ),
                ],
              ),

              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.all(0.0),
                  childrenPadding: EdgeInsets.all(0.0),
//                 backgroundColor: Colors.grey[50],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Хүрэх түвшин', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    zghutulbur.length <= 0 ? Container() : ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: zghutulbur[index].subHotolborUzuulelt == null ? 0 : zghutulbur[index].subHotolborUzuulelt.length,
                        padding: EdgeInsets.all(0.0),
                        itemBuilder: (BuildContext context, int indexSub) {
                          return  Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(flex: 3, child: Text('Он:', style: TextStyle(color: textColor, fontSize: 12),)),
                                      SizedBox(width: 4.0),
                                      Expanded(flex: 4, child: Text('${zghutulbur[index].subHotolborUzuulelt[indexSub].jilId}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(flex: 3, child: Text('Үр дүнгийн үзүүлэлт:', style: TextStyle(color: textColor, fontSize: 12),)),
                                      SizedBox(width: 4.0),
                                      Expanded(flex: 4, child: Text(zghutulbur[index].subHotolborUzuulelt[indexSub].hTuvshin, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(flex: 3, child: Text('Нийт төсөв, сая.төг:', style: TextStyle(color: textColor, fontSize: 12),)),
                                      SizedBox(width: 4.0),
                                      Expanded(flex: 4, child: Text('${zghutulbur[index].subHotolborUzuulelt[indexSub].tosov}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                    ],
                                  ),
                                  SizedBox(height: 5.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(flex: 3, child: Text('Хэрэгжилт хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                                      SizedBox(width: 4.0),
                                      Expanded(flex: 4, child: Text('${zghutulbur[index].subHotolborUzuulelt[indexSub].heregjilt}%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: RichText(
                                      //textAlign: TextAlign.justify,
                                      text: TextSpan(
                                          children: [
                                            TextSpan(text: 'Тайлан: ', style: TextStyle(color: textColor, fontWeight: FontWeight.w600,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                                            TextSpan(text: zghutulbur[index].subHotolborUzuulelt[indexSub].heregjiltTailan, style: TextStyle(color: textColor, fontWeight: FontWeight.w400,  fontFamily: "Roboto-Condensed", fontSize: 12)),
                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.0),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Хүрэх түвшин', style: TextStyle(fontSize: 12, fontFamily: "Roboto-Condensed", color: textColor, fontWeight: FontWeight.w600)),
                                  SizedBox(height: 10.0),
                                  Text(zghutulbur[index].subHotolborUzuulelt[index].heregjiltTailan, style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                                  SizedBox(height: 10.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(flex: 2, child: Text('Хэрэгжилтийн хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                                      Expanded(flex: 4, child: Text('${zghutulbur[index].subHotolborUzuulelt[indexSub].heregjilt}%', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                                    ],
                                  ),
                                ],
                              ),
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







