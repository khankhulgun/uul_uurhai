import 'package:catalog/core/models/map_data.dart';
import 'package:flutter/material.dart';
import '../map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';

void KhorooModal(context, Function onSelect, List<Regions> regions, Districts district) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(EsriIcons.left, size: 20, color: primaryColor),
                        SizedBox(
                          width: 10,
                        ),
                        Text(district.nameMn + " дүүрэг",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: primaryColor))
                      ],
                    ),
                  )),
              new Expanded(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: ListView.builder(
                        shrinkWrap: false,
                        itemCount: regions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              child: ListTile(
                                onTap: () {
                                  onSelect(district, regions[index]);
                                  Navigator.of(context).pop();
                                },
                            title: Text(regions[index].name + "-р хороо"),
                            trailing: Icon(Icons.keyboard_arrow_right),
                          ));
                        })),
              )
            ]));
      });
}
