

import 'package:catalog/core/services/region_service.dart';

import '../../locator.dart';
import '../models/regions.dart';
import 'base_model.dart';

class RegionModel extends BaseModel {
  RegionsService regionsService = locator<RegionsService>();

  List<Region> get regions => regionsService.regions;

  void getRegions() {
    setLoading(true);
    regionsService.getRegions();
    setLoading(false);
  }


}
