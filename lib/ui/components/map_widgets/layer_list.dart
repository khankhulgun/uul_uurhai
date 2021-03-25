import 'package:flutter/material.dart';
import 'package:flutter_map_arcgis/flutter_map_arcgis.dart';
import 'package:flutter_map/flutter_map.dart';
import './esri_icons_icons.dart';
import 'package:catalog/ui/styles/_colors.dart';
class LayerGroup {
  bool isExpanded;
  String title;
  List<Layer> layers;

  LayerGroup({this.isExpanded: false, this.title, this.layers});
}

class Layer {
  String title;
  String shorTitle;
  String url;
  String geometryType;
  bool isShow;
  Marker marker;
  PolygonOptions polygonOptions;
  Widget legend;
  Widget legends;
  String content;

  Layer({this.title, this.shorTitle, this.url, this.geometryType,  this.isShow, this.marker, this.polygonOptions, this.legend, this.legends, this.content});
}

void LayerListModal(context, List<LayerGroup> layerGroups, Function toggleLayer) {

  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setStateOfBottomSheet) {
            return Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              height: MediaQuery.of(context).size.height * 0.75,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsets.only(left: 5, right: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                              EsriIcons.layers,
                              size: 20,
                              color:primaryColor
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              'Давхарга',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: primaryColor

                              ))
                        ],
                      ),
                    ),
            new Expanded(
            child:
                    ListView.builder(
                      itemCount: layerGroups.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ExpansionPanelList(
                          animationDuration: Duration(milliseconds: 400),
                          children: [
                            ExpansionPanel(
                              body: Container(
                                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                  child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount:
                                          layerGroups[index].layers.length,
                                      itemBuilder: (BuildContext context,
                                          int layerIndex) {
                                        return Container(
                                          padding: EdgeInsets.all(0),
                                          child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding:  EdgeInsets.all(0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setStateOfBottomSheet(() {
                                                      toggleLayer(index, layerIndex);
                                                    });
                                                  },
                                                  child: Row(
                                                    children: <Widget>[
                                                      SizedBox(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        child:layerGroups[index].layers[layerIndex].legend,
                                                      ),
                                                      Expanded(child: Text(layerGroups[index]
                                                          .layers[layerIndex]
                                                          .title)),
                                                      SizedBox(
                                                        width: 30.0,
                                                        height: 30.0,
                                                        child:layerGroups[index].layers[layerIndex].isShow ? Icon(EsriIcons.visible, color: Colors.black54) : Icon(EsriIcons.non_visible, color: Colors.black54),
                                                      ),
//                                                Switch(
//                                                  value: layerGroups[index]
//                                                      .layers[layerIndex]
//                                                      .isShow,
//                                                  onChanged: (bool newValue) {
//
//                                                    setStateOfBottomSheet(() {
//                                                      toggleLayer(index, layerIndex);
//                                                    });
//                                                  },
//                                                ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              layerGroups[index].layers[layerIndex].legends != null ? layerGroups[index].layers[layerIndex].legends : Container()
                                            ],
                                          ),
                                        );
                                      })),
                              headerBuilder:
                                  (BuildContext context, bool isExpanded) {
                                return GestureDetector(
                                  onTap: () {
                                    setStateOfBottomSheet(() {
                                      layerGroups[index].isExpanded =
                                          !layerGroups[index].isExpanded;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                                    child: Text(
                                      '${layerGroups[index].title}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              isExpanded: layerGroups[index].isExpanded,
                            )
                          ],
                          expansionCallback: (int item, bool status) {
                            setStateOfBottomSheet(() {
                              layerGroups[index].isExpanded =
                                  !layerGroups[index].isExpanded;
                            });
                          },
                        );
                      },
                    ),
                    ),
                  ]),

            );
          },
        );
      });
}
