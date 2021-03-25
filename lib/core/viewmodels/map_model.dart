

import 'package:catalog/core/services/map_service.dart';

import '../../locator.dart';
import '../models/map_data.dart';
import 'base_model.dart';

class MapDataModel extends BaseModel {
  MapService mapService = locator<MapService>();

  MapData get mapData => mapService.mapData;

  Future<void> getMapData() async {
    setLoading(true);
     await mapService.getMapData();
    setLoading(false);
  }


}
