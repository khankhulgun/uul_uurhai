import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:catalog/utils/number.dart';

class Details extends StatefulWidget {
  final String title;
  final int id;
  const Details({Key key, this.title, this.id})
      : super(key: key);

  @override
  _Detailstate createState() => _Detailstate();
}

class _Detailstate extends State<Details> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();
  bool loading = true;

  String theme = "shine";
  List<Filter> filters = [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];
  List<Filter> filtersOlborloltNuurs = [Filter(column: "b_id", condition: "equals", value: "2")];

  List<Filter> filtersExportTumur = [Filter(column: "b_id", condition: "equals", value: "3")];
  List<Filter> filtersOlborloltTumur = [Filter(column: "b_id", condition: "equals", value: "3")];

  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];
  List<Filter> filtersExportGazriinTos = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportNuursBoomt = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesBoomt = [Filter(column: "b_id", condition: "equals", value: "1"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportZesTumur = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersAlt = [Filter(column: "a_maltlam_id", condition: "equals", value: "11"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersErdesUneAlt = [Filter(column: "ashigt_m_id", condition: "equals", value: "11")];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  List<Filter> filtersExportNuursWithDate = [Filter(column: "b_id", condition: "equals", value: "2"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];

  List<Filter> filtersExportTumurWithDate = [Filter(column: "b_id", condition: "equals", value: "3"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersExportGazarWithDate = [Filter(column: "b_id", condition: "equals", value: "4"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
  List<Filter> filtersBoomNuurs = [Filter(column: "boomt_short", condition: "equals", value: "ГАС"),Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];

  @override
  void initState() {
    super.initState();
    this.getExportDun();
    this.getOlborlolt();
  }

  double on_dun;
  double on_dun_umnuh_on;
  double on_ungursun_onii_zuruu;
  double on_ungursun_onii_zuruu_huviar;
  double range_dun;
  double range_dun_umnuh_on;
  double range_ungursun_onii_zuruu;
  double range_ungursun_onii_zuruu_huviar;

  double O_on_dun;
  double O_on_dun_umnuh_on;
  double O_on_ungursun_onii_zuruu;
  double O_on_ungursun_onii_zuruu_huviar;
  double O_range_dun;
  double O_range_dun_umnuh_on;
  double O_range_ungursun_onii_zuruu;
  double O_range_ungursun_onii_zuruu_huviar;

  void getExportDun() {
    _http.post_("https://app.mmhi.gov.mn/api/exportDun/${widget.id}", {"filters": filters}).then((response) {
      print(widget.id);
      setState(() {
        on_dun = getDouble(response.data["on_dun"]);
        on_dun_umnuh_on = getDouble(response.data["on_dun_umnuh_on"]);
        on_ungursun_onii_zuruu = getDouble(response.data["on_ungursun_onii_zuruu"]);
        on_ungursun_onii_zuruu_huviar = getDouble(response.data["on_ungursun_onii_zuruu_huviar"]);
        range_dun = getDouble(response.data["range_dun"]);
        range_dun_umnuh_on = getDouble(response.data["range_dun_umnuh_on"]);
        range_ungursun_onii_zuruu = getDouble(response.data["range_ungursun_onii_zuruu"]);
        range_ungursun_onii_zuruu_huviar = getDouble(response.data["range_ungursun_onii_zuruu_huviar"]);
        loading = false;
        print('????????');
        print(on_dun);
      });
      print('-----------');
      print(response.data);
    }).catchError((e) {
      print(e);
    });
  }

  void getOlborlolt() {
    _http.post_("https://app.mmhi.gov.mn/api/olborloltDun/${widget.id}", {"filters": filters}).then((response) {
      print(widget.id);
      setState(() {
        O_on_dun = getDouble(response.data["on_dun"]);
        O_on_dun_umnuh_on = getDouble(response.data["on_dun_umnuh_on"]);
        O_on_ungursun_onii_zuruu = getDouble(response.data["on_ungursun_onii_zuruu"]);
        O_on_ungursun_onii_zuruu_huviar = getDouble(response.data["on_ungursun_onii_zuruu_huviar"]);
        O_range_dun = getDouble(response.data["range_dun"]);
        O_range_dun_umnuh_on = getDouble(response.data["range_dun_umnuh_on"]);
        O_range_ungursun_onii_zuruu = getDouble(response.data["range_ungursun_onii_zuruu"]);
        O_range_ungursun_onii_zuruu_huviar = getDouble(response.data["range_ungursun_onii_zuruu_huviar"]);
        loading = false;
      });
    }).catchError((e) {
      print(e);
    });
  }

  // void setFilter(){
  //   setState(() {
  //     filters[0].value =getDateString(preStart);
  //     filters[1].value = getDateString(preEnd);
  //     Chart1.currentState.initChart();
  //     Chart2.currentState.initChart();
  //     Chart3.currentState.initChart();
  //     Chart4.currentState.initChart();
  //   });
  // }
  void _datePicker(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (context) {
          //PickerDateRange values = new PickerDateRange(gDate(filters[0].value), gDate(filters[1].value));
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return  Container(
              child: Column(
                children: [
                  Expanded(
                    child: SfDateRangePicker(
                      //initialSelectedRange: values,
                      //onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setStateOfBottomSheet((){
                        //setFilter();
                      });
                    },
                    color: Colors.blueAccent,
                    child: Text("Сонгох", style: TextStyle(color: Colors.white),),
                    padding: EdgeInsets.all(16),
                    // shape: CircleBorder(),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          });
        });
  }
  @override
  Widget build(BuildContext context) {
    List<Filter> filtersExportData = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];
    List<Filter> filtersOlborlolData = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];
    List<Filter> filtersExportWithDate = [Filter(column: "b_id", condition: "equals", value: "${widget.id}"), Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")];
    List<Filter> filtersOlborloltWithData= [Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"), Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06"), Filter(column: "b_id", condition: "equals", value: "${widget.id}")];

    var colors = colorsExportZes;
    if(widget.id == 2){
      colors = colorsExportNuurs;
    }
    if(widget.id == 3){
      colors = colorsExportTumur;
    }
    if(widget.id == 4){
      colors = colorsExportTumur;
    }

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
            title: "${widget.title}",
            showBack: true,
            scaffold: _scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(right: 5, top: 0, left: 5, bottom: 10),
                child: Column(children: [
                  GestureDetector(
                    onTap: () { _datePicker(context); },
                    child:Container(
                      //margin: EdgeInsets.only(left:20, bottom: 0),
                        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
                        margin: EdgeInsets.symmetric(horizontal: 6.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Row(
                                children: [
                                  Container(
                                    child: Text(filters[0].value, style: TextStyle(fontSize: 14),),
                                  ),
                                  Container(
                                    child: Text(" - "),
                                  ),
                                  Container(
                                    child: Text(filters[1].value, style: TextStyle(fontSize: 14),),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 0,
                                child: Icon(Icons.arrow_drop_down_outlined)
                            ),
                          ],
                        )
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
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
                                      Text('2021.01.01 ~ 2021.03.31 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text(number(range_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
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
                                          Expanded(flex: 2, child: Text(number(range_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
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
                                      range_ungursun_onii_zuruu >= 0 ? Text(number(range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                                      range_ungursun_onii_zuruu_huviar >= 0 ? Text(number(range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                              color:  Color(0xFFD3E3FD),
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
                                      Text('2021.03.01 ~ 2021.03.06 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text(number(on_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
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
                                          Expanded(flex: 2, child: Text(number(on_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
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
                                      on_ungursun_onii_zuruu >= 0 ? Text(number(on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                                      on_ungursun_onii_zuruu_huviar >= 0 ? Text(number(on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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

                  LambdaChartRest(title: "Экпорт", colors: colors, APIurl: "/api/exportYear", theme: theme, filters: filtersExportData, chartType: "ColumnChart"),
                  // //12.2 Export zes
                  LambdaChart(schemaID: '223', theme: theme, filters: filtersExportWithDate),

                  LambdaChartRest(title: "Экпорт боомтоор",  APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportWithDate, chartType: "ColumnChart"),

                  // // 13 Olborlolor zes
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
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
                                      Text('2021.01.01 ~ 2021.03.31 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text(number(O_range_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
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
                                          Expanded(flex: 2, child: Text(number(O_range_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
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
                                      O_range_ungursun_onii_zuruu >= 0 ? Text(number(O_range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(O_range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                                      O_range_ungursun_onii_zuruu_huviar >= 0 ? Text(number(O_range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(O_range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                              color:  Color(0xFFD3E3FD),
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
                                      Text('2021.03.01 ~ 2021.03.06 ', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                      SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Expanded(flex: 0, child: Text(number(O_on_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
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
                                          Expanded(flex: 2, child: Text(number(O_on_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
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
                                      O_on_ungursun_onii_zuruu >= 0 ? Text(number(O_on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                      : Text(number(O_on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),

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
                                      O_on_ungursun_onii_zuruu_huviar >= 0 ? Text(number(O_on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                          : Text(number(O_on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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

                  LambdaChart(schemaID: '226', theme: theme, filters: filtersOlborloltWithData),
                  LambdaChartRest(title: "Олборлолт жилээр",  APIurl: "/api/olborloltYear", theme: theme, colors: colors, filters: filtersOlborlolData, chartType: "ColumnChart"),

                  LambdaChart(schemaID: '224', theme: theme, filters: filtersExportWithDate),

                  widget.id == 2 ? LambdaChartRest(title: "Нүүрсний экспорт боомтоор",  APIurl: "/api/nuursBoomt", theme: theme, filters: filters, chartType: "ColumnChart") : Container(),
                  // //17.2 Нүүрсний экспорт боомтоор ALL
                  widget.id == 2 ? LambdaChart(schemaID: '225', theme: theme, filters: filtersBoomNuurs, hideTitle:true): Container(),


                ]))));
  }
}
