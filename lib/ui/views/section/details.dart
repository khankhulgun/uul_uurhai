import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/loader.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:lambda/plugins/chart/lambda_chart_rest.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:catalog/utils/number.dart';
import 'package:catalog/utils/date.dart';

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
  List<Filter> exportFilters = [
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: prevMonthDate()),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: today())
  ];
  List<Filter> olborloltFilters = [
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: prevMonthDate()),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: today())
  ];


  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];



  @override
  void initState() {
    super.initState();
    this.getExportDun();
    this.getOlborlolt();
  }

  double on_dun;
  double on_dun_umnuh_on;
  double on_ungursun_onii_zuruu = 0;
  double on_ungursun_onii_zuruu_huviar = 0;
  double range_dun;
  double range_dun_umnuh_on;
  double range_ungursun_onii_zuruu = 0;
  double range_ungursun_onii_zuruu_huviar = 0;

  double O_on_dun;
  double O_on_dun_umnuh_on;
  double O_on_ungursun_onii_zuruu = 0;
  double O_on_ungursun_onii_zuruu_huviar = 0;
  double O_range_dun;
  double O_range_dun_umnuh_on;
  double O_range_ungursun_onii_zuruu = 0;
  double O_range_ungursun_onii_zuruu_huviar = 0;

  void getExportDun() {
    _http.post_("/api/exportDun/${widget.id}", {"filters": exportFilters}).then((response) {
     // print(response.data);
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
      });
    }).catchError((e) {
      print(e);
    });
  }

  void getOlborlolt() {
    _http.post_("/api/olborloltDun/${widget.id}", {"filters": olborloltFilters}).then((response) {
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

  DateTime preStart;
  DateTime preEnd;

  void setFilter(){
    setState(() {
      exportFilters[0].value = getDateString(preStart);
      exportFilters[1].value = getDateString(preEnd);
      Chart1.currentState.initChart();
      Chart2.currentState.initChart();

      this.getExportDun();
    });
  }

  void setFilterOlborlolt(){
    setState(() {
      olborloltFilters[0].value = getDateString(preStart);
      olborloltFilters[1].value = getDateString(preEnd);
      Chart3.currentState.initChart();
      Chart4.currentState.initChart();
      if(widget.id == 2){
        Chart5.currentState.initChart();
        Chart6.currentState.initChart();
      }

      this.getOlborlolt();
    });
  }
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      final DateTime rangeStartDate = args.value.startDate;
      final DateTime rangeEndDate = args.value.endDate;
      if(rangeStartDate != null && rangeEndDate != null){
        setState(() {
          preStart = rangeStartDate;
          preEnd = rangeEndDate;
        });
      }
    }
  }
  final GlobalKey<LambdaChartRestState> Chart1 = new GlobalKey<LambdaChartRestState>();
  final GlobalKey<LambdaChartState> Chart2 = new GlobalKey<LambdaChartState>();

  final GlobalKey<LambdaChartState> Chart3 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartState> Chart4 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartRestState> Chart5 = new GlobalKey<LambdaChartRestState>();
  final GlobalKey<LambdaChartState> Chart6 = new GlobalKey<LambdaChartState>();

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
          PickerDateRange values = new PickerDateRange(gDate(exportFilters[0].value), gDate(exportFilters[1].value));
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return  Container(
              child: Column(
                children: [
                  Expanded(
                    child: SfDateRangePicker(
                      initialSelectedRange: values,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setStateOfBottomSheet((){
                        setFilter();
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
  void _datePickerOLborlolt(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (context) {
          PickerDateRange values = new PickerDateRange(gDate(olborloltFilters[0].value), gDate(olborloltFilters[1].value));
          return StatefulBuilder(builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return  Container(
              child: Column(
                children: [
                  Expanded(
                    child: SfDateRangePicker(
                      initialSelectedRange: values,
                      onSelectionChanged: _onSelectionChanged,
                      selectionMode: DateRangePickerSelectionMode.range,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setStateOfBottomSheet((){
                        setFilterOlborlolt();
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
    List<Filter> filtersExportWithDate = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];

    List<Filter> filtersOlborlolData = [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];
    List<Filter> filtersOlborloltWithDate= [Filter(column: "b_id", condition: "equals", value: "${widget.id}")];

    filtersExportWithDate.add(exportFilters[0]);
    filtersExportWithDate.add(exportFilters[1]);

    filtersOlborloltWithDate.add(olborloltFilters[0]);
    filtersOlborloltWithDate.add(olborloltFilters[1]);

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
        body: Container(
          height: double.infinity,
          child: loading ? Loader() : SingleChildScrollView(
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
                                      child: Text(exportFilters[0].value, style: TextStyle(fontSize: 14),),
                                    ),
                                    Container(
                                      child: Text(" - "),
                                    ),
                                    Container(
                                      child: Text(exportFilters[1].value, style: TextStyle(fontSize: 14),),
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: Text("Экпорт".toUpperCase(), style: TextStyle(color: mainColor, fontSize: 12, fontWeight: FontWeight.w600)),
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
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
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
                                Text('${yearFirst(exportFilters[0].value)} ~ ${exportFilters[1].value}', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Expanded(flex: 0, child: Text(float(on_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                                    SizedBox(width: 4),
                                    Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(flex: 0, child: Text('Өмнөх оны\nмөн үед:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                                    SizedBox(width: 10),
                                    Expanded(flex: 2, child: Text(float(on_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
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
                                Text(float(on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: on_ungursun_onii_zuruu > 0 ? Colors.green : Colors.red, fontWeight: FontWeight.w400))
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
                                Text(huvi(on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: on_ungursun_onii_zuruu > 0 ? Colors.green : Colors.red, fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(horizontal: 6),
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   child: Stack(
                    //     children: [
                    //       Container(
                    //         padding: EdgeInsets.all(10.0),
                    //         decoration: BoxDecoration(
                    //           color:  Colors.white,
                    //           borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    //           border: Border.all(color: Color.fromRGBO(232, 232, 232, 1), width: 1),
                    //         ),
                    //         child:  Container(
                    //           padding: EdgeInsets.only(top: 76.0),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               Expanded(
                    //                 flex: 4,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                   children: [
                    //                     Text('${exportFilters[0].value} ~ ${exportFilters[1].value}', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     Row(
                    //                       mainAxisAlignment: MainAxisAlignment.start,
                    //                       crossAxisAlignment: CrossAxisAlignment.end,
                    //                       children: [
                    //                         Expanded(flex: 0, child: Text(number(range_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                    //                         SizedBox(width: 4),
                    //                         Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                    //                       ],
                    //                     ),
                    //                     SizedBox(height: 5),
                    //                     Row(
                    //                       mainAxisAlignment: MainAxisAlignment.start,
                    //                       crossAxisAlignment: CrossAxisAlignment.center,
                    //                       children: [
                    //                         Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                    //                         SizedBox(width: 4),
                    //                         Expanded(flex: 2, child: Text(number(range_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                    //                       ],
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Expanded(
                    //                 flex: 3,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.center,
                    //                   children: [
                    //                     Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     range_ungursun_onii_zuruu > 0 ? Text(number(range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                    //                         : Text(number(range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Expanded(
                    //                 flex: 3,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.center,
                    //                   children: [
                    //                     Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     range_ungursun_onii_zuruu_huviar > 0 ? Text(huvi(range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                    //                         : Text(huvi(range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       Positioned(
                    //         top: 0,
                    //         left: 0,
                    //         right: 0,
                    //         child:   Container(
                    //           padding: EdgeInsets.all(10.0),
                    //           decoration: BoxDecoration(
                    //             color:  Color(0xFFD3E3FD),
                    //             borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    //           ),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             children: [
                    //               Expanded(
                    //                 flex: 4,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                   children: [
                    //                     Text('${yearFirst(exportFilters[0].value)} ~ ${exportFilters[1].value}', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     Row(
                    //                       mainAxisAlignment: MainAxisAlignment.start,
                    //                       crossAxisAlignment: CrossAxisAlignment.end,
                    //                       children: [
                    //                         Expanded(flex: 0, child: Text(number(on_dun), style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600))),
                    //                         SizedBox(width: 4),
                    //                         Expanded(flex: 2, child: Text('мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                    //                       ],
                    //                     ),
                    //                     SizedBox(height: 5),
                    //                     Row(
                    //                       mainAxisAlignment: MainAxisAlignment.start,
                    //                       crossAxisAlignment: CrossAxisAlignment.center,
                    //                       children: [
                    //                         Expanded(flex: 0, child: Text('Өмнөх он:', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400))),
                    //                         SizedBox(width: 4),
                    //                         Expanded(flex: 2, child: Text(number(on_dun_umnuh_on)+' мян.тн', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w500))),
                    //                       ],
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Expanded(
                    //                 flex: 3,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.center,
                    //                   children: [
                    //                     Text('Өнгөрсөн оны мөн\nүеэс (мян.тн)', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     on_ungursun_onii_zuruu > 0 ? Text(number(on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                    //                         : Text(number(on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                    //                   ],
                    //                 ),
                    //               ),
                    //               Expanded(
                    //                 flex: 3,
                    //                 child: Column(
                    //                   mainAxisAlignment: MainAxisAlignment.start,
                    //                   crossAxisAlignment: CrossAxisAlignment.center,
                    //                   children: [
                    //                     Text('Өнгөрсөн оны мөн үеэс хувиар', textAlign: TextAlign.center, style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
                    //                     SizedBox(height: 5),
                    //                     on_ungursun_onii_zuruu_huviar > 0 ? Text(huvi(on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                    //                         : Text(huvi(on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    LambdaChartRest(title: "Экпорт боомтоор", key: Chart1, APIurl: "/api/exportBoomt", theme: theme, filters: filtersExportWithDate, chartType: "ColumnChart"),
                    // //12.2 Export zes
                    LambdaChart(schemaID: '223', key: Chart2, theme: theme, filters: filtersExportWithDate),
                    SizedBox(height: 30),
                    LambdaChartRest(title: "Экпорт жилээр",  colors: colors, APIurl: "/api/exportYear", theme: theme, filters: filtersExportData, chartType: "ColumnChart"),
                    widget.id == 2 ? LambdaChartRest(title: "Экспорт боомт болон төрлөөр",  key: Chart5,  APIurl: "/api/nuursBoomt", theme: theme, filters: exportFilters, chartType: "ColumnChart") : Container(),
                    // // //17.2 Нүүрсний экспорт боомтоор ALL
                    widget.id == 2 ? LambdaChart(schemaID: '225', theme: theme,  key: Chart6, filters: exportFilters, hideTitle:false): Container(),

                    GestureDetector(
                      onTap: () { _datePickerOLborlolt(context); },
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
                                      child: Text(olborloltFilters[0].value, style: TextStyle(fontSize: 14),),
                                    ),
                                    Container(
                                      child: Text(" - "),
                                    ),
                                    Container(
                                      child: Text(olborloltFilters[1].value, style: TextStyle(fontSize: 14),),
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 0),
                                  child: Text("Олборлолт".toUpperCase(), style: TextStyle(color: mainColor, fontSize: 12, fontWeight: FontWeight.w600)),
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
                                        Text('${olborloltFilters[0].value} ~ ${olborloltFilters[1].value}', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
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
                                        O_range_ungursun_onii_zuruu > 0 ? Text(number(O_range_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
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
                                        O_range_ungursun_onii_zuruu_huviar > 0 ? Text(huvi(O_range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                            : Text(huvi(O_range_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                                        Text('${olborloltFilters[0].value} ~ ${olborloltFilters[1].value}', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.w400)),
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
                                        O_on_ungursun_onii_zuruu > 0 ? Text(number(O_on_ungursun_onii_zuruu), textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
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
                                        O_on_ungursun_onii_zuruu_huviar > 0 ? Text(huvi(O_on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.w400))
                                            : Text(huvi(O_on_ungursun_onii_zuruu_huviar)+'%', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.red, fontWeight: FontWeight.w400)),
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
                    SizedBox(height: 10),
                    LambdaChart(schemaID: '226', key: Chart3, theme: theme, filters: filtersOlborloltWithDate),
                    SizedBox(height: 10),
                    LambdaChart(schemaID: '224',  key: Chart4, theme: theme, filters: filtersOlborloltWithDate),


                    LambdaChartRest(title: "Олборлолт жилээр",  APIurl: "/api/olborloltYear", theme: theme, colors: colors, filters: filtersOlborlolData, chartType: "ColumnChart"),

                  ]))),
        ));
  }
}
