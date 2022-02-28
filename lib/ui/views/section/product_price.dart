import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';

import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/common.dart';

class ProductPrice extends StatefulWidget {
  @override
  _ProductPriceState createState() => _ProductPriceState();
}

class _ProductPriceState extends State<ProductPrice> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool loading = true;

  String theme = "shine";
  List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];
  final List<String> _dropdownValues = ["АЛТ","НҮҮРС"];
  String dropdownValue = 'АЛТ';

  List<Common$Query$LutAshigtMaltmal> datas = [];
  int selectedId = null;
  final GlobalKey<LambdaChartState> Chart1 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartRestState> Chart2= new GlobalKey<LambdaChartRestState>();

  @override
  void initState() {
    super.initState();
    this.getData();
  }
  void getData() async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(CommonQuery());
    setState(() {
      datas = response.data.lutAshigtMaltmal;
      loading = false;
    });
  }
  List<Common$Query$LutAshigtMaltmal> getTuruls(){
    List<Common$Query$LutAshigtMaltmal> filtredTurul = [];
    datas.forEach((v) {
      if(v.ashigtMaltmal != null){
        filtredTurul.add(v);
      }
    });
    return filtredTurul;
  }
  void setFilter (int newVal){
    setState(() {
      filtersErdesUneAlt[0].value = "${newVal}";
      selectedId = newVal;
      Chart1.currentState.initChart();
      Chart2.currentState.initChart();
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
            title: "Эрдэс бүтэгдэхүүний үнэ",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  DropdownButtonHideUnderline(
                    child: Container(
                      height: 30,
                      //width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Color.fromRGBO(223, 223, 223, 1), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),

                      ),
                      child: DropdownButton(
                          items: getTuruls().map((row) => DropdownMenuItem(
                            child: Text(row.ashigtMaltmal),
                            value: row.id,
                          )).toList(),
                          onChanged: (newVal) {
                           setFilter(newVal);
                          },
                          value: selectedId,
                          isExpanded: false,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          hint: Text(
                            'Алт',
                          )
                      ),
                      // child: DropdownButton(
                      //   items: _dropdownValues
                      //       .map((value) => DropdownMenuItem(
                      //     child: Text(value, style: TextStyle(color: Color.fromRGBO(68, 68, 68, 1), fontSize: 12, fontWeight: FontWeight.w500)),
                      //     value: value,
                      //   ))
                      //       .toList(),
                      //   isExpanded: false,
                      //   value: dropdownValue,
                      //   onChanged: (String newValue) {
                      //     setState(() {
                      //       dropdownValue = newValue;
                      //     });
                      //   },
                      // ),
                    ),
                  ),
                  // //// 11.1 Эрдэс бүтэгдэхүүний үнэ
                  LambdaChart(schemaID: '222', theme: theme, key: Chart1, filters: filtersErdesUneAlt),
                  // //// 11.2 Эрдэс бүтэгдэхүүний үнэ Жилээр
                  LambdaChartRest(title: "Эрдэс бүтэгдэхүүний үнэ жилээр", key: Chart2,  APIurl: "/api/mineralPrice", theme: theme, colors: colorsAltai, filters: filtersErdesUneAlt, chartType: "ColumnChart"),
                ]
                ))));
  }
}
