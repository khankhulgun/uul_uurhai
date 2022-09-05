import 'package:catalog/ui/components/header.dart';
import 'package:flutter/material.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:flutter_icons/feather.dart';
import '../../components/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_html/flutter_html.dart';

//PAGINATION
import 'package:catalog/utils/date.dart';
import 'package:catalog/ui/common/paginate.dart';

//GRAPHQL
import 'package:catalog/graphql/config.dart';
import 'package:catalog/graphql/queries/medee.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();



  //GRAPHQL Pagination
  List<Medee$Query$Paginate$DsMedee> news = [];
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
    final response = await client.execute(MedeeQuery(variables: MedeeArguments(page: page, size: 4)));

    setState(() {
      news = response.data.paginate.dsMedee;
      currentPage = page;
      lastPage = response.data.paginate.lastPage;
      total = response.data.paginate.total;
      loading = false;
    });
  }


  Widget buildNews(BuildContext context, int index) {
    final medee = news[index];
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 0.0, bottom: 15.0, left: 0.0),
      padding: const EdgeInsets.only(top: 15.0),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.grey[300]),
//              bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
        ),
        color: Colors.white,
      ),
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.all(0.0),
        child: Container(
          padding: const EdgeInsets.only(left: 0.0),
          margin: EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                medee.medee.toUpperCase(),
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              SizedBox(
                height: 5.0,
              ),
              Html(
                data: medee.tailbar,
                defaultTextStyle: TextStyle(
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(Icons.today, size: 14, color: mainColor),
                  SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    date(medee.ognoo),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ],
              )
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
            title: "МЭДЭЭ, МЭДЭЭЛЭЛ / Цаг үеийн мэдээ",
            scaffold: _scaffoldKey,
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () => _onButtonPressed(),
        //   child: Icon(Feather.getIconData('search')),
        //   backgroundColor: mainColor,
        // ),

//      floatingActionButtonLocation:
//      FloatingActionButtonLocation.centerFloat,
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Pagination(
            lastPage: lastPage,
            currentPage: currentPage,
            total: total,
            loading: loading,
            getData: getData,
            itemBuilder: ListView.builder(
              itemCount: news.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildNews(context, index),
            ),
          ),
        )
    );
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
