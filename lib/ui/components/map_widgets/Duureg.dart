import 'package:flutter/material.dart';
import '../map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'package:catalog/core/models/map_data.dart';
import 'khoroo.dart';

void DuuregModal(context, Function onSelect, List<Districts> districts, List<Regions> regions) {
  void selectKhoroo (Districts district, Regions region) {
    onSelect(district, region);
    Navigator.of(context).pop();
  }
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Container(
                width: double.infinity,
                height: 40,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Icon(EsriIcons.map_pin, size: 20, color: primaryColor),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Дүүрэг, хороо сонгох',
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: primaryColor))
                  ],
                ),
              ),
              new Expanded(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ListView.builder(
                        shrinkWrap: false,
                        itemCount: districts.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(

                              child: ListTile(
                                onTap: () {
                                  KhorooModal(context, selectKhoroo, regions.where((i) => i.districtId == districts[index].id).toList(), districts[index]);
                                },
                            title: Text(districts[index].nameMn+" дүүрэг"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ));
                        })),
              )
            ]));
      });
}
