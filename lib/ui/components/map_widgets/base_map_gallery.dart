import 'package:flutter/material.dart';
import '../map_widgets/esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
import 'dart:io';
class BaseMap {
  String title;
  String img;
  String urlTemplate;
  List<String> subdomains;

  BaseMap(
      String title, String img, String urlTemplate, List<String> subdomains) {
    this.title = title;
    this.img = img;
    this.urlTemplate = urlTemplate;
    this.subdomains = subdomains;
  }
}

class BaseMapGallery {
  int baseMapIndex = 0;
  List<BaseMap> baseMaps = [
    new BaseMap(
        "Google Гудамж",
        "assets/images/baseMaps/googleStreets.jpg",
        'https://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
        ['mt0', 'mt1', 'mt2', 'mt3']),
    new BaseMap(
        "Google Сансрын",
        "assets/images/baseMaps/googleSatellite.jpg",
        'https://{s}.google.com/vt/lyrs=s&x={x}&y={y}&z={z}',
        ['mt0', 'mt1', 'mt2', 'mt3']),
    new BaseMap(
        "Esri Сансрын",
        "assets/images/baseMaps/tempimagery.jpg",
        'https://{s}.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}',
        ['server', 'services']),
    new BaseMap(
        "Openstreet",
        "assets/images/baseMaps/openstreet.jpg",
        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
        ['a', 'b', 'c']),

  ];
  void changeBaseMap(int index) {
//    print(baseMapIndex);
//    setState(() {
    baseMapIndex = index;
//    });
  }
}

File _getLocalImageFile(String fullPath) => File(fullPath);

void BaseMapsModal(context, Function onChange, BaseMapGallery base_map_gallery) {

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
                        Icon(
                          EsriIcons.basemap,
                          size: 20,
                          color:primaryColor
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Суурь зураг',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            color: primaryColor

                        ))
                      ],
                    ),
                  ),

                  new Expanded(
                      child: GridView.count(
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                          crossAxisCount: 2,

                          // Generate 100 widgets that display their index in the List.
                          children: List.generate(base_map_gallery.baseMaps.length, (index) {
                            return GestureDetector(
                                onTap: () {
                                  onChange(index);
                                  Navigator.of(context).pop();
                                },
                                child: Center(
                                  child: Container(
                                    height: 135,
                                    child: Card(
                                      margin: EdgeInsets.fromLTRB(
                                          index.isEven ? 16 : 8,
                                          0,
                                          index.isEven ? 8 : 16,
                                          0),
                                      elevation: 4.0,
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                image: new DecorationImage(
                                                  image: new AssetImage(base_map_gallery.baseMaps[index].img),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              padding: const EdgeInsets.only(top: 8),
                                              child: Text(base_map_gallery.baseMaps[index].title),
                                            )
                                          ]),
                                    ),
                                  ),
                                ));
                          })))
                ]));
      });
}