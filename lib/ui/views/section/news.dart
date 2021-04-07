import 'package:catalog/ui/components/header.dart';
import 'package:catalog/ui/components/sidebar.dart';
import 'package:catalog/utils/number.dart';
import 'package:flutter/material.dart';
import 'package:lambda/plugins/chart/models/filter.dart';
import 'package:lambda/plugins/chart/lambda_chart.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/utils/date.dart';
import 'package:lambda/modules/network_util.dart';


class ExportNews extends StatefulWidget {
  @override
  _ExportNewsState createState() => _ExportNewsState();
}

class _ExportNewsState extends State<ExportNews> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  String theme = "shine";
  List<Filter> filters = [
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportNuurs = [
    Filter(column: "b_id", condition: "equals", value: "2")
  ];
  List<Filter> filtersOlborloltNuurs = [
    Filter(column: "b_id", condition: "equals", value: "2")
  ];
  List<Filter> filtersExportZes = [
    Filter(column: "b_id", condition: "equals", value: "1")
  ];
  List<Filter> filtersOlborlolZes = [
    Filter(column: "b_id", condition: "equals", value: "1")
  ];
  List<Filter> filtersExportTumur = [
    Filter(column: "b_id", condition: "equals", value: "3")
  ];
  List<Filter> filtersOlborloltTumur = [
    Filter(column: "b_id", condition: "equals", value: "3")
  ];
  List<Filter> filtersOlborloltGazrinTos = [
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06"),
    Filter(column: "b_id", condition: "equals", value: "4")
  ];

  List<String> colorsExportNuurs = ["#3030BE", "#6363E7", "#A8A8EA"];
  List<String> colorsExportZes = ["#F87129", "#E59B73", "#FFD5BE"];
  List<String> colorsExportTumur = ["#2B97D4", "#85CCF5", "#D1E6F2"];
  List<Filter> filtersExportGazriinTos = [
    Filter(column: "b_id", condition: "equals", value: "4"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportNuursBoomt = [
    Filter(column: "b_id", condition: "equals", value: "2"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportZesBoomt = [
    Filter(column: "b_id", condition: "equals", value: "1"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportZesTumur = [
    Filter(column: "b_id", condition: "equals", value: "3"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersAlt = [
    Filter(column: "a_maltlam_id", condition: "equals", value: "11"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersErdesUneAlt = [
    Filter(column: "ashigt_m_id", condition: "equals", value: "11")
  ];
  List<String> colorsAltai = ["#F7C417", "#FF9B05", "#F5EAC3"];

  List<Filter> filtersExportNuursWithDate = [
    Filter(column: "b_id", condition: "equals", value: "2"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportZesWithDate = [
    Filter(column: "b_id", condition: "equals", value: "1"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportTumurWithDate = [
    Filter(column: "b_id", condition: "equals", value: "3"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersExportGazarWithDate = [
    Filter(column: "b_id", condition: "equals", value: "4"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  List<Filter> filtersBoomNuurs = [
    Filter(column: "boomt_short", condition: "equals", value: "ГАС"),
    Filter(
        column: "ognoo", condition: "greaterThanOrEqual", value: "2021-01-01"),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: "2021-04-06")
  ];
  DateTime preStart;
  DateTime preEnd;
  final GlobalKey<LambdaChartState> Chart1 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartState> Chart2 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartState> Chart3 = new GlobalKey<LambdaChartState>();
  final GlobalKey<LambdaChartState> Chart4 = new GlobalKey<LambdaChartState>();

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

  @override
  void initState() {
    super.initState();
    this.getZes();
  }

  double autoZam;
  double dun;
  double tumurZam;
  double umnuhOniiHaritsuulaltHuwi;
  double ussunDun;
  void getZes() {
    _http.post_("https://app.mmhi.gov.mn/api/exportTeeverDun/1}", {"filters": filters}).then((response) {
      setState(() {
        autoZam = getDouble(response.data["autoZam"]);
        dun = getDouble(response.data["dun"]);
        tumurZam = getDouble(response.data["tumurZam"]);
        umnuhOniiHaritsuulaltHuwi = getDouble(response.data["umnuhOniiHaritsuulaltHuwi"]);
        ussunDun = getDouble(response.data["ussunDun"]);
      });
      print('-----------');
      print(response.data);
    }).catchError((e) {
      print(e);
    });
  }

  void setFilter(){
    setState(() {
      filters[0].value =getDateString(preStart);
      filters[1].value = getDateString(preEnd);
      Chart1.currentState.initChart();
      Chart2.currentState.initChart();
      Chart3.currentState.initChart();
      Chart4.currentState.initChart();
    });
  }
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
          PickerDateRange values = new PickerDateRange(gDate(filters[0].value), gDate(filters[1].value));
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
            title: "Экспортын мэдээ",
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
                  SizedBox(height: 10),
                  // // 1 Export Medee
                  LambdaChart(schemaID: '216', theme: theme, key: Chart1, filters: filters),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(
                                                  top: 6.0),
                                              child: Text(
                                                '300',
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(
                                                  top: 6.0),
                                              child: Text(
                                                '609.6',
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                '24,235.1',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                '+23.1%',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                        ]),
                  ),

                  SizedBox(height: 10),
                  // // 3 Export Nuurs by Track
                  LambdaChart(schemaID: '218', theme: theme, key: Chart2, filters: filters),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Text(
                                                number(autoZam),
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(left: 0.0),
                                              child: Text(
                                                number(tumurZam),
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                              number(dun),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                    number(ussunDun),
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: umnuhOniiHaritsuulaltHuwi >= 0 ? Text(number(umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500)) :
                                                      Text(number(umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500)),
                                              ),
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
                        ]),
                  ),

                  SizedBox(height: 10),

                  // // 4 Export Zes by Track
                  LambdaChart(schemaID: '219', key:Chart3, theme: theme, filters: filters),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(
                                                  top: 6.0),
                                              child: Text(
                                                '300',
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
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
                                              padding: const EdgeInsets.only(
                                                  top: 6.0),
                                              child: Text(
                                                '609.6',
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өссөн дүн',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                '24,235.1',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Өмнөх оноос',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textColor,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Expanded(
                                                  child: Text(
                                                '+23.1%',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
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
                        ]),
                  ),

                  SizedBox(height: 10),
                  // // 5 Export Tumur by Track
                  LambdaChart(schemaID: '220', key:Chart4, theme: theme, filters: filters),

                  SizedBox(height: 10),
                  // // 5 Export Tumur by Track
                  LambdaChart(schemaID: '238', theme: theme),

                  SizedBox(height: 10),
                  // // 5 Export Tumur by Track
                  LambdaChart(schemaID: '240', theme: theme),

                  SizedBox(height: 10),
                  // // 5 Export Tumur by Track
                  LambdaChart(schemaID: '241', theme: theme),

                ]))));
  }
}
