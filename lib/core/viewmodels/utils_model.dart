import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'base_model.dart';

class UtilsModel extends BaseModel {
  final GlobalKey<InnerDrawerState> _drawerKey = GlobalKey<InnerDrawerState>();
  GlobalKey get drawerKey => _drawerKey;

  toggleDrawer() {
    _drawerKey.currentState.toggle();
    notifyListeners();
  }
}
