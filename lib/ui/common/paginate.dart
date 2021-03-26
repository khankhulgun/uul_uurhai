import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lambda/plugins/data_form/loader.dart';

typedef void GetData(int page);

class Pagination extends StatefulWidget {
  final int currentPage;
  final int lastPage;
  final int total;
  final bool loading;
  final GetData getData;
  final Widget itemBuilder;

  Pagination({Key key,
    this.currentPage,
    this.lastPage,
    this.total,
    this.loading,
    this.getData, this.itemBuilder})
      : super(key: key);

  @override
  _PaginationState createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {


  List<Widget> getPagination() {
    List<Widget> pager = [];

    bool isFirstPage = false;
    bool isLastPage = false;

    if (widget.currentPage == 1) {
      isFirstPage = true;
    }
    if (widget.lastPage == widget.currentPage) {
      isLastPage = true;
    }
    pager.add(new RawMaterialButton(
      onPressed: () {
        if (!isFirstPage) {
          widget.getData(widget.currentPage - 1);
        }
      },
      child: Icon(FontAwesome.getIconData("angle-left"),
          color: isFirstPage ? Color(0xFF999999) : Colors.blue, size: 25),
      shape: new CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.white,
      padding: const EdgeInsets.all(10.0),
      constraints: BoxConstraints(),
    ));

    List<int> ranges = [];

    int left = widget.currentPage - 1;

    int right = widget.currentPage + 3;

    if (widget.currentPage == 1) {
      right = widget.currentPage + 4;
    }

    for (var i = 1; i <= widget.lastPage; i++) {
      if (i >= left && i < right) {
        ranges.add(i);
      }
    }

    for (int i in ranges) {
      pager.add(SizedBox(width: 5));
      pager.add(new RawMaterialButton(
        onPressed: () {
          widget.getData(i);
        },
        child: Text(
          i.toString(),
          style: TextStyle(
              color: widget.currentPage == i ? Colors.white : Colors.blue),
        ),
        shape: new CircleBorder(),
        elevation: 2.0,
        fillColor: widget.currentPage == i ? Colors.blue : Colors.white,
        padding: const EdgeInsets.all(15.0),
        constraints: BoxConstraints(),
      ));
    }
    pager.add(SizedBox(width: 5));
    pager.add(RawMaterialButton(
      onPressed: () {
        if (!isLastPage) {
          widget.getData(widget.currentPage + 1);
        }
      },
      child: Icon(FontAwesome.getIconData("angle-right"),
          color: isLastPage ? Color(0xFF999999) : Colors.blue, size: 25),
      shape: new CircleBorder(),
      elevation: 2.0,
      fillColor: Colors.white,
      padding: const EdgeInsets.all(10.0),
      constraints: BoxConstraints(),
    ));

    return pager;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: widget.loading
          ? Loader()
          : Column(
        children: [
          Expanded(
            child: widget.itemBuilder,
          ),
          widget.lastPage >= 2
              ? Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                    width: 1.0, color: Color(0xFFCCCCCC)),
              ),
            ),
            height: 70,
            padding: EdgeInsets.only(
                right: 10, top: 5, left: 10, bottom: 15),
            child: Row(
              children: getPagination(),
            ),
          )
              : Container()
        ],
      ),
    );
  }
}