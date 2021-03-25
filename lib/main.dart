import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  debugPaintSizeEnabled = false;
  Provider.debugCheckInvalidValueType = null;
  runApp(App());
}
