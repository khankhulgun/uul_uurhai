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
    Filter(column: "ognoo", condition: "greaterThanOrEqual", value: prevMonthDate()),
    Filter(column: "ognoo", condition: "lessThanOrEqual", value: today())
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
    this.getNvvrs();
    this.getTumriinHvder();
  }

  double autoZam;
  double dun;
  double tumurZam;
  double umnuhOniiHaritsuulaltHuwi = 0;
  double ussunDun;

  double n_autoZam;
  double n_dun;
  double n_tumurZam;
  double n_umnuhOniiHaritsuulaltHuwi = 0;
  double n_ussunDun;

  double tumur_autoZam;
  double tumur_dun;
  double tumur_tumurZam;
  double tumur_umnuhOniiHaritsuulaltHuwi = 0;
  double tumur_ussunDun;

  void getZes() {
    _http.post_("/api/exportTeeverDun/1}", {"filters": filters}).then((response) {
      setState(() {
        autoZam = getDouble(response.data["autoZam"]);
        dun = getDouble(response.data["dun"]);
        tumurZam = getDouble(response.data["tumurZam"]);
        umnuhOniiHaritsuulaltHuwi = getDouble(response.data["umnuhOniiHaritsuulaltHuwi"]);
        ussunDun = getDouble(response.data["ussunDun"]);
      });
    }).catchError((e) {
      print(e);
    });
  }
  void getNvvrs() {
    _http.post_("/api/exportTeeverDun/2}", {"filters": filters}).then((response) {
      setState(() {
        n_autoZam = getDouble(response.data["autoZam"]);
        n_dun = getDouble(response.data["dun"]);
        n_tumurZam = getDouble(response.data["tumurZam"]);
        n_umnuhOniiHaritsuulaltHuwi = getDouble(response.data["umnuhOniiHaritsuulaltHuwi"]);
        n_ussunDun = getDouble(response.data["ussunDun"]);
      });
    }).catchError((e) {
      print(e);
    });
  }
  void getTumriinHvder() {
    _http.post_("/api/exportTeeverDun/3}", {"filters": filters}).then((response) {
      setState(() {
        tumur_autoZam = getDouble(response.data["autoZam"]);
        tumur_dun = getDouble(response.data["dun"]);
        tumur_tumurZam = getDouble(response.data["tumurZam"]);
        tumur_umnuhOniiHaritsuulaltHuwi = getDouble(response.data["umnuhOniiHaritsuulaltHuwi"]);
        tumur_ussunDun = getDouble(response.data["ussunDun"]);
      });
    }).catchError((e) {
      print(e);
    });
  }

  void setFilter(){
    setState(() {
      filters[0].value =getDateString(preStart);
      filters[1].value = getDateString(preEnd);
      this.getZes();
      this.getNvvrs();
      this.getTumriinHvder();
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                Text('НҮҮРС (тн)', textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 12, fontWeight: FontWeight.w600),),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)
                                          ),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 0.0),
                                              child: Text(
                                                float(n_autoZam),
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
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0.0),
                                              child: Text(
                                                float(n_tumurZam),
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
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 0,
                                            child: Text('Нийт', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w400),),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            flex: 4,
                                            child: Text(float(n_dun), textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Өссөн дүн', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w400),),
                                          Expanded(
                                            child: Text(float(n_ussunDun), textAlign: TextAlign.right, style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.w500),)
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text('Өмнөх оноос', textAlign: TextAlign.right, style: TextStyle(color: textColor, fontSize: 12, fontWeight: FontWeight.w400),),
                                          Expanded(
                                            child: n_umnuhOniiHaritsuulaltHuwi > 0 ? Text(huvi(n_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500)) :
                                            Text(huvi(n_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500)),
                                          ),
                                          // Expanded(
                                          //   child: n_umnuhOniiHaritsuulaltHuwi > 0 ? Text(number(n_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500)) :
                                          //   Text(number(n_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500)),
                                          // ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                  'ЗЭСИЙН БАЯЖМАЛ (тн)',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textOrange,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0.0),
                                              child: Text(
                                                float(autoZam),
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left: 0.0),
                                              child: Text(
                                                float(tumurZam),
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
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Нийт',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              float(dun),
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textOrange,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Row(
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
                                                float(ussunDun),
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textOrange,
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
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
                                            child: umnuhOniiHaritsuulaltHuwi > 0 ? Text(huvi(umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500)) :
                                            Text(huvi(umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500)),
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),
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
                                  'ТӨМРИЙН ХҮДЭР (тн)',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: textBlueGrey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/auto_teever.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0.0),
                                              child: Text(
                                                float(tumur_autoZam),
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
                                              flex: 0,
                                              child: SvgPicture.asset(
                                                  'assets/uuhvy_img/tumur_zam.svg',
                                                  width: 28,
                                                  fit: BoxFit.contain)),
                                          SizedBox(width: 6),
                                          Expanded(
                                            flex: 4,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0.0),
                                              child: Text(
                                                float(tumur_tumurZam),
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
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Нийт',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              float(tumur_dun),
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  color: textBlueGrey,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Row(
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
                                                float(tumur_ussunDun),
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    color: textBlueGrey,
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
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
                                            child: tumur_umnuhOniiHaritsuulaltHuwi > 0 ? Text(huvi(tumur_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.w500)) :
                                            Text(huvi(tumur_umnuhOniiHaritsuulaltHuwi)+'%', textAlign: TextAlign.right, style: TextStyle(color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500)),
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

                ]))));
  }
}
