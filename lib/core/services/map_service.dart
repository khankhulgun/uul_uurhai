import 'package:catalog/core/models/map_data.dart';
import '../../locator.dart';
import 'api.dart';

class MapService {
  Api api = locator<Api>();

  MapData _mapData;
  MapData get mapData => _mapData;


  Future getMapData() async {
    _mapData = await api.getMapData();
  }

}
