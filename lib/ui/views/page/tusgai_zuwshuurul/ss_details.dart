import 'package:catalog/ui/components/loader.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/utils/number.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';

class SSDetails extends StatefulWidget {
  @override
  _SSDetailsState createState() => _SSDetailsState();
}

class _SSDetailsState extends State<SSDetails> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String theme = "shine";
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;
  List<SongonShalagruulaltDelegrengui$Query$Paginate$AaSongonShalagruulaltDelegrengui> son_shalgaruulalt = [];

  void initState() {
    super.initState();
    getData(1);
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(SongonShalagruulaltDelegrenguiQuery(variables: SongonShalagruulaltDelegrenguiArguments(page: page, size: 10)));
    setState(() {
      son_shalgaruulalt = response.data.paginate.aaSongonShalagruulaltDelegrengui;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(son_shalgaruulalt);
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
            title: "СШ Дэлгэрэнгүй",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: Container(
          height: double.infinity,
          child: loading ? Loader() :  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Талбайн хэмжээ /га/', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                              Center(
                                child: LambdaChart(schemaID: '241', theme: theme),
                              )
                            ],
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 0),
                                  child: Text("Бүртгэлийн жагсаалт", style: TextStyle(color: mainColor, fontSize: 12, fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(width: 4,),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.width,
                                  color: mainColor,
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(height: 10,)
                    ],
                  )
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Pagination(
                    lastPage: lastPage,
                    currentPage: currentPage,
                    total: total,
                    loading: loading,
                    getData: getData,
                    itemBuilder:  ListView.builder(
                      // shrinkWrap: true,
                      // physics: ScrollPhysics(),
                      itemCount: son_shalgaruulalt == null ? 0 : son_shalgaruulalt.length,
                      itemBuilder: (BuildContext context, int index) =>
                          buildTripCard(context, index),
                    ),
                  ),
                ),
              )
              // Container(
              //   height: 400,
              //   margin: EdgeInsets.only(top: 10),
              //   child: Pagination(
              //     lastPage: lastPage,
              //     currentPage: currentPage,
              //     total: total,
              //     loading: loading,
              //     getData: getData,
              //     itemBuilder:  ListView.builder(
              //       itemCount: son_shalgaruulalt == null ? 0 : son_shalgaruulalt.length,
              //       itemBuilder: (BuildContext context, int index) =>
              //           buildTripCard(context, index),
              //     ),
              //   ),
              // )
            ],
          ),
        )
    );
  }
  Widget buildTripCard(BuildContext context, int index) {
    final tusgai = son_shalgaruulalt[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.all(Radius.circular(6.0)),
        border: Border.all(color: Color.fromRGBO(243, 243, 243, 2), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(date(tusgai.ognoo), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('С.Ш код:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text('${numberInt(tusgai.sShCode)}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Талбайн дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text('${numberInt(tusgai.talbainDugaar)}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Талбайн хэмжээ га', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(number(tusgai.talbainHemjee), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 4, child: Text('Босго үнэ:', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.bosgoUne), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 4, child: Text('Аймаг/Нийслэл', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.aNiislel), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 4, child: Text('Сум/Дүүрэг', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.sumDuureg), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );

  }
}
