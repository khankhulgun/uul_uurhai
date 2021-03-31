import 'package:flutter/material.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/sidebar.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';

import 'section/details.dart';
// import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
//
// import 'package:lambda/plugins/chart/models/filter.dart';

class statistic {
  final String title;

  statistic(
    this.title,
  );
}
class Item {
  final int id;
  final String image;
  final String title;
  Item(
      this.id,
      this.image,
      this.title,
      );
}
class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  @override
  void initState() {
    super.initState();
  }

  final List<statistic> statistics = [
    statistic(
      "Экспортын мэдээ",
    ),
    statistic(
      "Олборлолтын мэдээ",
    ),
    statistic(
      "МБ-ны худалдан авалт",
    ),
  ];
  String theme = "shine";

  // List<Filter> filters = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  // List<Filter> filtersOlborloltNuurs = [Filter(column: "olborlolt_b_id", condition: "equals", value: "2")];
  // List<Filter> filtersExportZes = [Filter(column: "b_id", condition: "equals", value: "1")];
  // List<Filter> filtersOlborlolZes = [Filter(column: "olborlolt_b_id", condition: "equals", value: "1")];
  // List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  // List<Filter> filtersOlborloltTumur = [Filter(column: "olborlolt_b_id", condition: "equals", value: "3")];
  // List<Filter> filtersOlborloltGazrinTos = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01"), Filter(column: "olborlolt_b_id", condition: "equals", value: "4")];
  //
  // List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  // List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  // List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];
  // List<Filter> filtersExportGazriinTos = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportNuursBoomt = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportZesBoomt = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportZesTumur = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersAlt = [Filter(column: "a_maltlam_id", condition: "equals", value: "11"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  // List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];
  //
  // List<Filter> filtersExportNuursWithDate = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportZesWithDate = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];
  // List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-01")];

  final List<Item> items = [
    Item(1, "assets/uuhvy_img/copper.png", "ЗЭС"),
    Item(2, "assets/uuhvy_img/coal.png", "НҮҮРС"),
    Item(3, "assets/uuhvy_img/iron.png", "ТӨМРИЙН ХҮДЭР"),
    Item(3, "assets/uuhvy_img/petroleum.png", "ГАЗРЫН ТОС"),
  ];

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
            title: "УУЛ УУРХАЙ, ХҮНД ҮЙЛДВЭРИЙН ЯАМ",
            scaffold: _scaffoldKey,
          ),
        ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () => _onButtonPressed(),
//        child: Icon(Feather.getIconData('search')),
//        backgroundColor: mainColor,
//      ),

        body: SingleChildScrollView(

            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(
                  children: [
                    // //18.4 Export gazriin tos baiguullaga
                    // LambdaChart(schemaID: '223', theme: theme, filters: filtersExportGazarWithDate),
                    // //18.3 Export gazriin tos boomt
                    // LambdaChartRest(title: "Газрын тос боомтоор",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportGazriinTos, chartType: "ColumnChart"),
                    // //18.2 Olbrologch baiguullaga
                    // LambdaChart(schemaID: '227', theme: theme, filters: filtersOlborloltGazrinTos, hideTitle:true),
                    // // // 18.1 Olborlolor gazriin tos
                    // LambdaChart(schemaID: '226', theme: theme, filters: filtersOlborloltGazrinTos),
                    // //17.2 Нүүрсний экспорт боомтоор ALL
                    // LambdaChart(schemaID: '225', theme: theme, filters: filtersBoomNuurs, hideTitle:true),
                    // //17.1 Нүүрсний экспорт боомтоор
                    // LambdaChartRest(title: "Нүүрсний экспорт боомтоор",  APIurl: "/api/nuursBoomt", theme: theme, filters: filters, chartType: "ColumnChart"),
                    // // 16.1Нүүрсний олборлолт
                    // LambdaChartRest(title: "Нүүрсний олборлолт",  APIurl: "/api/olborloltYear", theme: theme, colors: colorsExportNuurs, filters: filtersOlborloltNuurs, chartType: "ColumnChart"),
                    // // 16.2Нүүрсний экспорт
                    // LambdaChartRest(title: "Нүүрсний экспорт",  APIurl: "/api/exportYear", theme: theme, colors: colorsExportZes, filters: filtersExportNuurs, chartType: "ColumnChart"),
                    // // // 15.2 Olborlolor tumur
                    // LambdaChartRest(title: "Төмрийн хүдэр, баяжмалын олборлолт",  APIurl: "/api/olborloltYear", theme: theme, colors: colorsExportTumur, filters: filtersOlborloltTumur, chartType: "ColumnChart"),
                    // // // 15 Olborlolor tumur
                    // LambdaChart(schemaID: '224', theme: theme, filters: filtersOlborloltTumur),
                    // // 14Export tumur
                    // LambdaChart(schemaID: '223', theme: theme, filters: filtersExportTumurWithDate),
                    // // 13 Olborlolor zes
                    // LambdaChart(schemaID: '224', theme: theme, filters: filtersExportZesWithDate),
                    // LambdaChartRest(title: "Зэсийн баяжмалын олборлолт",  APIurl: "/api/olborloltYear", theme: theme, colors: colorsExportZes, filters: filtersOlborlolZes, chartType: "ColumnChart"),
                    // //12.2 Export zes
                    // LambdaChart(schemaID: '223', theme: theme, filters: filtersExportZesWithDate),
                    // //// 11.1 Эрдэс бүтэгдэхүүний үнэ
                    // LambdaChart(schemaID: '222', theme: theme),
                    // //// 11.2 Эрдэс бүтэгдэхүүний үнэ Жилээр
                    // LambdaChartRest(title: "Эрдэс бүтэгдэхүүний үнэ Жилээр",  APIurl: "/api/mineralPrice", theme: theme, colors: colorsAltai, filters: filtersErdesUneAlt, chartType: "ColumnChart"),
                    // //// 10 "МБ худалдан авсан үнэт метал
                    // LambdaChartRest(title: "МБ худалдан авсан үнэт метал",  APIurl: "/api/mBankBuy", theme: theme, colors: colorsAltai, filters: filtersAlt, chartType: "ColumnChart"),
                    // //// 9.2 Export Tumur Year
                    // LambdaChartRest(title: "ТӨМРИЙН ХҮДЭР", colors: colorsExportTumur, APIurl: "/api/exportYear", theme: theme, filters: filtersExportTumur, chartType: "ColumnChart"),
                    // //// 9.2 Export Zes Year
                    // LambdaChartRest(title: "ЗЭСИЙН БАЯЖМАЛ", colors: colorsExportZes, APIurl: "/api/exportYear", theme: theme, filters: filtersExportZes, chartType: "ColumnChart"),
                    // //// 9.1 Export Nuur YEar
                    // LambdaChartRest(title: "НҮҮРС", colors: colorsExportNuurs, APIurl: "/api/exportYear", theme: theme, filters: filtersExportNuurs, chartType: "ColumnChart"),
                    // //// 8 Export Tumur Boomt
                    // LambdaChartRest(title: "ТӨМРИЙН ХҮДЭР БООМТ",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportZesTumur, chartType: "ColumnChart"),
                    // //// 7 Export Zes Boomt
                    // LambdaChartRest(title: "ЗЭСИЙН БАЯЖМАЛ БООМТ",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportZesBoomt, chartType: "ColumnChart"),
                    // //// 6 Export Nuurs Boomt
                    // LambdaChartRest(title: "НҮҮРС БООМТ",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportNuursBoomt, chartType: "ColumnChart"),
                    // // 5 Export Tumur by Track
                    // LambdaChart(schemaID: '220', theme: theme, filters: filters),
                    // // 4 Export Zes by Track
                    // LambdaChart(schemaID: '219', theme: theme, filters: filters),
                    // // 3 Export Nuurs by Track
                    // LambdaChart(schemaID: '218', theme: theme, filters: filters),
                    // //2 Export BOOMT
                    // LambdaChart(schemaID: '214', theme: theme, filters: filters),
                    // // 1 Export Medee
                    // LambdaChart(schemaID: '216', theme: theme, filters: filters),

                    // Экспорт
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Экспорт', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 100,
                                  //padding: EdgeInsets.all(20.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        blurRadius: 5.0,
                                        spreadRadius: .3,
                                        offset: Offset(3.0, 3.0),// changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/export_news');
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/uuhvy_img/medee.png",
                                          fit: BoxFit.cover,
                                          width: 30,
                                        ),
                                        SizedBox(height: 10),
                                        Text('Мэдээ', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w400)
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 100,
                                    //padding: EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 5.0,
                                          spreadRadius: .3,
                                          offset: Offset(3.0, 3.0),// changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/boomt');
                                      },
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/uuhvy_img/boomt.png",
                                            fit: BoxFit.cover,
                                            width: 30,
                                          ),
                                          SizedBox(height: 10),
                                          Text('Боомтоор', style: TextStyle(fontSize: 12,  color: textColor, fontWeight: FontWeight.w400)
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 100,
                                    //padding: EdgeInsets.all(20.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          blurRadius: 5.0,
                                          spreadRadius: .3,
                                          offset: Offset(3.0, 3.0),// changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/jileer');
                                      },
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/uuhvy_img/jil.png",
                                            fit: BoxFit.cover,
                                            width: 30,
                                          ),
                                          SizedBox(height: 10),
                                          Text('Жилээр', style: TextStyle(fontSize: 12,  color: textColor, fontWeight: FontWeight.w400)
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      )
                    ),
                    // Эрдэс бүтээгдэхүүний төрлөөр
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Эрдэс бүтээгдэхүүний төрлөөр', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: items.length,
                            padding: EdgeInsets.all(0.0),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 80,
                                width: 120,
                                margin: EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      blurRadius: 5.0,
                                      spreadRadius: .3,
                                      offset: Offset(3.0, 3.0),// changes position of shadow
                                    ),
                                  ],
                                ),
                                child: InkWell(
                                  onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Details(title: items[index].title,)));
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                      Image.asset(
                                        items[index].image,
                                        fit: BoxFit.cover,
                                        width: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(items[index].title, style: TextStyle(fontSize: 12,  color: textColor, fontWeight: FontWeight.w400)
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    // Монгол банкны худалдан авсан үнэт метал, үнэ
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Монгол банкны худалдан авсан үнэт метал, үнэ', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            //color: Colors.white,
                            color: Color.fromRGBO(231, 240, 254, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.withOpacity(0.3),
                            //     blurRadius: 5.0,
                            //     spreadRadius: .3,
                            //     offset: Offset(3.0, 3.0),// changes position of shadow
                            //   ),
                            // ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/bank');
                            },
                            child: Image.asset(
                              "assets/uuhvy_img/mongolbank.png",
                              fit: BoxFit.cover,
                              width: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Эрдэс бүтээгдэхүүний үнэ ханш
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Эрдэс бүтээгдэхүүний үнэ, ханш', style: TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                          margin: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(8.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 5.0,
                                spreadRadius: .3,
                                offset: Offset(3.0, 3.0),// changes position of shadow
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/product');
                            },
                            child: Container(
                              height: 100,
                            ),
                          )
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              border: Border.all(color: Color.fromRGBO(232, 232, 232, 1), width: 1),
                            ),
                            child:  Container(
                              padding: EdgeInsets.only(top: 76.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('2020.10.01 ~ 2020.11.01 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Expanded(flex: 0, child: Text('1,142.9', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                                            SizedBox(width: 4),
                                            Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                                            SizedBox(width: 4),
                                            Expanded(flex: 2, child: Text('1,185.1 мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Text('+37.9', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Text('+3.3%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child:   Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color:  Color.fromRGBO(255, 227, 128, 1),
                                borderRadius: BorderRadius.all(Radius.circular(6.0)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('2020.10.01 ~ 2020.11.01 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Expanded(flex: 0, child: Text('1,144.7', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                                            SizedBox(width: 4),
                                            Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                          ],
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                                            SizedBox(width: 4),
                                            Expanded(flex: 2, child: Text('1,185.1 мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Text('-40.4', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                        SizedBox(height: 5),
                                        Text('-3.4%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),

                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'НҮҮРС',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/auto_teever.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '300',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: primaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/tumur_zam.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '609.6',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: primaryColor,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Нийт',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Text(
                                                '909.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өссөн дүн',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '24,235.1',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: primaryColor,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өмнөх оноос',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '+23.1%',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
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
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ЗЭСИЙН БАЯЖМАЛ',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/auto_teever.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '300',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textOrange,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/tumur_zam.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '609.6',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textOrange,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Нийт',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Text(
                                                '909.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өссөн дүн',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '24,235.1',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: textOrange,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өмнөх оноос',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '+23.1%',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
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
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'ТӨМРИЙН ХҮДЭР',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/auto_teever.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '300',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textBlueGrey,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(),
                                      Expanded(
                                        flex: 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Expanded(
                                                flex: 4,
                                                child: SvgPicture.asset(
                                                    'assets/uuhvy_img/tumur_zam.svg',
                                                    width: 28,
                                                    fit: BoxFit.contain)),
                                            Expanded(
                                              flex: 4,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 6.0),
                                                child: Text(
                                                  '609.6',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textBlueGrey,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Нийт',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400),
                                              ),
                                              Text(
                                                '909.6',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өссөн дүн',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '24,235.1',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: textBlueGrey,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  'Өмнөх оноос',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: textColor,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400),
                                                ),
                                                Expanded(
                                                    child: Text(
                                                      '+23.1%',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500),
                                                    )),
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
                            SizedBox(height: 10),
                          ]),
                    ),
                    SizedBox(height: 10),

                    // LambdaChart(schemaID: '214', theme: theme),
                    // ListView.builder(
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: statistics.length,
                    //   padding: EdgeInsets.all(0.0),
                    //   itemBuilder: (BuildContext context, int index) =>
                    //       buildTripCard(context, index),
                    // ),
                  ],
                ))

//      body: Container(
//          margin: EdgeInsets.only(top: 6, right: 10, left: 10, bottom: 10),
//          padding: EdgeInsets.all(0.0),
//
//          child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.start,
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Expanded(
//                      child: Container(
//                        width: MediaQuery.of(context).size.width,
//                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
//                        child: Text('Экспортын мэдээ', style: TextStyle(color: textColor, fontSize: 14),)
//                      ),
//                    ),
//                    Expanded(
//                      child: Container(
//                        width: MediaQuery.of(context).size.width,
//                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
//                        child: Text('2020-12-11 ~ 12-18', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14),),
//                      ),
//                    ),
//                  ],
//                ),
//                SizedBox(height: 10),
//                Container(
//                  height: 200,
//                  color: Colors.grey[200],
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('НҮҮРС', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Expanded(
//                                      flex: 4,
//                                      child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                  ),
//                                  Expanded(
//                                      flex: 4,
//                                      child: Padding(
//                                        padding: const EdgeInsets.only(top: 6.0),
//                                        child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                      ),
//                                  ),
//                                ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('ЗЭСИЙН БАЯЖМАЛ', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: textOrange, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  padding: EdgeInsets.all(5.0),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(6),
//                    color: Colors.grey[100],
//                  ),
//                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text('ТӨМРИЙН ХҮДЭР', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 12, fontWeight: FontWeight.w600),),
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        children: <Widget>[
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/auto_teever.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('300', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Divider(),
//                          Expanded(
//                            flex: 2,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Expanded(
//                                    flex: 4,
//                                    child: SvgPicture.asset('assets/uuhvy_img/tumur_zam.svg', width: 28,  fit: BoxFit.contain)
//                                ),
//                                Expanded(
//                                  flex: 4,
//                                  child: Padding(
//                                    padding: const EdgeInsets.only(top: 6.0),
//                                    child: Text('609.6', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                          Expanded(
//                            flex: 2,
//                            child: Center(
//                              child: Column(
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                crossAxisAlignment: CrossAxisAlignment.start,
//                                children: <Widget>[
//                                  Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                  Text('909.6', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),),
//                                ],
//                              ),
//                            ),
//                          ),
//                          Expanded(
//                            flex: 4,
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('24,235.1', textAlign: TextAlign.right, style: TextStyle(color: textBlueGrey, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.w400),),
//                                    Expanded(child: Text('+23.1%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500),)),
//                                  ],
//                                ),
//
//                              ],
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ],
//                  ),
//                ),
//                SizedBox(height: 10),
//                Container(
//                  height: 200,
//                  color: Colors.grey[200],
//                ),
//              ]
//          )
//      ),
            ));
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (
          context,
        ) {
          return StatefulBuilder(builder:
              (BuildContext context, StateSetter setStateOfBottomSheet) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
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
                                borderRadius: BorderRadius.circular(4)),
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
                        ))
                  ],
                ),
              ),
            );
          });
        });
  }

  Widget buildTripCard(BuildContext context, int index) {
    final statistic = statistics[index];
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      flex: 3,
                      child: Text(
                        statistics[index].title.toUpperCase(),
                        style: TextStyle(color: textColor, fontSize: 14),
                      )),
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        '2020-12-11 ~ 12-18',
                        textAlign: TextAlign.right,
                        style: TextStyle(color: textColor, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 220,
                color: Colors.grey[200],
                child: Image.asset('assets/uuhvy_img/chart.png',
                    height: 220, fit: BoxFit.contain),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'НҮҮРС',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
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
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ЗЭСИЙН БАЯЖМАЛ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textOrange,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textOrange,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textOrange,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
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
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.grey[100],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'ТӨМРИЙН ХҮДЭР',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textBlueGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/auto_teever.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '300',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Expanded(
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                      'assets/uuhvy_img/tumur_zam.svg',
                                      width: 28,
                                      fit: BoxFit.contain)),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                    '609.6',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Нийт',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '909.6',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textBlueGrey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өссөн дүн',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '24,235.1',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textBlueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Өмнөх оноос',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Expanded(
                                      child: Text(
                                    '+23.1%',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  )),
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
              SizedBox(height: 10),
              Container(
                height: 220,
                color: Colors.grey[200],
                child: SvgPicture.asset('assets/uuhvy_img/chart1.svg',
                    height: 220, fit: BoxFit.contain),
              ),
            ]),
      ),
    );
  }
}
