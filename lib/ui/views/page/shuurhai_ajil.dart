import 'package:catalog/graphql/queries/shuurhai_ajil.dart';
import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import 'package:lambda/modules/network_util.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lambda/plugins/data_form/loader.dart';
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';
import 'package:catalog/graphql/config.dart';




class ShuurhaiAjil extends StatefulWidget {


  @override
  _ShuurhaiAjilState createState() => _ShuurhaiAjilState();
}
class _ShuurhaiAjilState extends State<ShuurhaiAjil> {
  //List<Project> projects = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  NetworkUtil _http = new NetworkUtil();

  List<ShuurkhaiAjil$Query$Paginate$DsShuurkhaiAjil> shuurhais = [];

  bool loading = true;
  int currentPage = 1;
  int lastPage = 0;
  int total = 0;

  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void initState() {
    super.initState();
    getData(1);
  }

  void getData(int page) async {
    setState(() {
      loading = true;
    });
    final response = await client.execute(ShuurkhaiAjilQuery(variables: ShuurkhaiAjilArguments(page: page, size: 10)));

    setState(() {
      shuurhais = response.data.paginate.dsShuurkhaiAjil;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;

    });
  }



  Widget buildTripCard(BuildContext context, int index) {
    final shuurhai = shuurhais[index];

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 5.0),
      margin: EdgeInsets.only(bottom: 0.0),
      child: Card(
        elevation: 1.0,
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
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Expanded(
                          flex: 2,
                          child: Container(
                              child: Image.asset('assets/uuhvy_img/placeholder.png',  fit: BoxFit.cover),
                              //child: Image.asset('assets/uuhvy_img/yamnii.png', height: 90,  fit: BoxFit.cover),
                          )
                      ),
                      SizedBox(width: 10.0),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('${date(shuurhai.ognoo)}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),),
                            Container(child: Text(shuurhai.ajil,  maxLines: 4,
                              overflow: TextOverflow.ellipsis, style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 12),)),
                          ],
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                        flex: 2,
                        child: CircularPercentIndicator(
                          radius: 55.0,
                          animationDuration: 1500,
                          lineWidth: 4.0,
                          animation: true,
                          //percent: data.heregjiltiinHuvi != null ? int.parse(data.heregjiltiinHuvi) / 100 : 0,
                          percent: 0.5,
                          center: Text(
                            '50%',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                                color: shuurhai.status == 'Биелсэн' ? Color(0xFF00E676) : Color(0xfffcb85f)
                            ),
                          ),
                          footer: Text(
                            shuurhai.status,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                                color: shuurhai.status == 'Биелсэн' ? Color(0xFF00E676) : Color(0xfffcb85f)
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
//                            progressColor: currentProgressColor(),

                          progressColor: shuurhai.status == 'Биелсэн' ? Color(0xFF00E676) : Color(0xfffcb85f),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                          flex: 6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Хэрэгжүүлэгч:', style: TextStyle(color: textColor, fontSize: 12),),
                              SizedBox(width: 4.0),
                              Text(shuurhai.salbar, style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12)),
                            ],
                          )
                      ),
                      SizedBox(width: 5.0),
                      Expanded(
                          flex: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(flex: 0, child: Text('Хугацаа:', style: TextStyle(color: textColor, fontSize: 12),)),
                              SizedBox(width: 4.0),
                              Expanded(flex: 4, child: Text('${date(shuurhai.ognoo)}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12))),
                            ],
                          )
                      ),
                    ],
                  ),
                ],
              ),

              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
//                 backgroundColor: Colors.grey[50],
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Хэрэгжилт', style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(shuurhai.ajil, style: TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(flex: 2, child: Text('Хэрэгжүүлсэн огноо:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 4, child: Text('${shuurhai.ognoo}', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(flex: 2, child: Text('Хэрэгжилтийн хувь:', style: TextStyle(color: textColor, fontSize: 12),)),
                            Expanded(flex: 4, child: Text('', style: TextStyle(color: textColor, fontWeight: FontWeight.w600, fontSize: 12),)),
                          ],
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),

                    // Container(
                    //   height: 30,
                    //   margin: EdgeInsets.only(top: 10, bottom: 20),
                    //   decoration: BoxDecoration(
                    //     color: Colors.greenAccent[700],
                    //     borderRadius:
                    //     new BorderRadius.circular(10.0),
                    //   ),
                    //   child: FlatButton(
                    //     child: Container(
                    //       child: Stack(
                    //         fit: StackFit.expand,
                    //         children: <Widget>[
                    //           Center(
                    //             child: Text(
                    //               'Биелсэн',
                    //               textAlign: TextAlign.center,
                    //               style: TextStyle(
                    //                   color: Color.fromRGBO(
                    //                       255, 255, 255, 1),
                    //                   fontSize: 16,
                    //                   fontWeight:
                    //                   FontWeight.w400),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //     onPressed: () {},
                    //
                    //   ),
                    // ),

                  ],

                ),
              ),

            ],
          ),
        ),
      ),
    );
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
          title: "ШУУРХАЙ АЖИЛ",
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
              itemCount: shuurhais == null ? 0 : shuurhais.length,
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
            child: Row(
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


}







