import 'package:catalog/ui/components/loader.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:catalog/graphql/config.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:catalog/graphql/queries/tzAndSongon.dart';

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/busad.dart';

class newSShalgaruulalt extends StatefulWidget {
  @override
  _newSShalgaruulaltState createState() => _newSShalgaruulaltState();
}

class _newSShalgaruulaltState extends State<newSShalgaruulalt> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<TzAndSongon$Query$AaSongonShalgaruulalt> datas = [];
  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;
  List<SongonShalgaruulalt$Query$Paginate$AaSongonShalgaruulalt> son_shalgaruulalt = [];
  String theme = "shine";

  void initState() {
    super.initState();
    getData(1);
    this.getTuruls();
  }
  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(SongonShalgaruulaltQuery(variables: SongonShalgaruulaltArguments(page: page, size: 10)));
    setState(() {
      son_shalgaruulalt = response.data.paginate.aaSongonShalgaruulalt;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

      print(son_shalgaruulalt);
    });
  }
  void getTuruls() async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(TzAndSongonQuery());
    setState(() {
      datas = response.data.aaSongonShalgaruulalt;
      loading = false;
      print('------');
      print(datas);
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
            title: "Сонгон шалгаруулалт",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: Container(
          height: double.infinity,
          child: loading ? Loader() : SingleChildScrollView(
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
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  //left: BorderSide(color: Colors.grey[400], width: 0.5),
                                  right: BorderSide(color: Colors.grey[400], width: 0.5)
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Дугаар:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                                    SizedBox(width: 4,),
                                    Text('', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500))
                                  ],
                                ),
                                SizedBox(height: 18,),
                                Center(child: datas.length == 0 ? Container() : Text(number(datas[0].sShBagts), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600)))
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                Text('Талбайн тоо', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                SizedBox(height: 18,),
                                datas.length == 0 ? Container() : Text(number(datas[0].sShTalbai), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(color: Colors.grey[400], width: 0.5),
                                  //ight: BorderSide(color: Colors.grey[400], width: 0.5)
                              ),
                            ),
                            child: Column(
                              children: [

                                Text('Зарласан талбайн хэмжээ /га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                                SizedBox(height: 5,),
                                datas.length == 0 ? Container() :  Text(number(datas[0].sShHemjeeGa), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(53, 53, 137, 1), fontWeight: FontWeight.w600))
                              ],
                            ),
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
                              Text('ОЛГОСОН:', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.bold)),
                              Text('Тусгай зөвшөөрөл', style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                              SizedBox(height: 15,),
                              Center(child: datas.length == 0 ? Container() :  Text(number(datas[0].ologsonZToo), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500)))
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
                                Text('Төсөвт төвлөрүүлсэн\nорлого тэрбум/төг', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black54, fontWeight: FontWeight.w500)),
                                SizedBox(height: 18,),
                                datas.length == 0 ? Container() :  Text(number(datas[0].ulsTosovTerbum), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 4,
                          child: Column(
                            children: [

                              Text('Олгосон талбайн\nхэмжээ /га/', textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w500)),
                              SizedBox(height: 16,),
                              datas.length == 0 ? Container() : Text(number(datas[0].ologsonHegmjeeGa), textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Color.fromRGBO(88, 88, 88, 1), fontWeight: FontWeight.w500))
                            ],
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Center(
                      child: LambdaChart(schemaID: '240', theme: theme),
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
                Container(
                  height: 400,
                  margin: EdgeInsets.only(top: 10),
                  child: loading ? Loader() : Pagination(
                    lastPage: lastPage,
                    currentPage: currentPage,
                    total: total,
                    loading: loading,
                    getData: getData,
                    itemBuilder:  ListView.builder(
                      itemCount: son_shalgaruulalt == null ? 0 : son_shalgaruulalt.length,
                      itemBuilder: (BuildContext context, int index) =>
                          buildTripCard(context, index),
                    ),
                  ),
                )
              ],
            ),
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
              Expanded(flex: 4, child: Text('Дугаар:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(number(tusgai.sShBagts), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Зарласан талбайн тоо:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(number(tusgai.sShTalbai), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(flex: 4, child: Text('Зарласан талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
              Expanded(flex: 4, child: Text(number(tusgai.sShHemjeeGa), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
                    Expanded(flex: 4, child: Text('Олголт:', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.ologsonZToo), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 4, child: Text('Олгогдсон талбайн хэмжээ:', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.ologsonHegmjeeGa), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(flex: 4, child: Text('Төвлөрүүлсэн орлого тэрбум/төг/', style: TextStyle(color: textColor, fontSize: 12),)),
                    Expanded(flex: 3, child: Text(number(tusgai.ulsTosovTerbum), style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
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
