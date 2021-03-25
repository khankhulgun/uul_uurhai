import 'package:get_it/get_it.dart';

import 'core/services/user_service.dart';
import 'package:lambda/modules//agent/agent_util.dart';
import 'package:lambda/modules/agent/social_auth.dart';
import 'package:lambda/modules/gcm/notify.dart';
import 'package:lambda/modules/network_util.dart';
import 'core/services/api.dart';
import 'core/services/base_service.dart';
import 'core/viewmodels/user_model.dart';
import 'core/viewmodels/base_model.dart';
import 'core/viewmodels/utils_model.dart';

import 'core/viewmodels/map_model.dart';
import 'package:catalog/core/services/map_service.dart';

import 'core/viewmodels/regions_model.dart';
import 'package:catalog/core/services/region_service.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  //Basic services
  locator.registerSingleton<Notify>(new Notify());
  locator.registerSingleton<AgentUtil>(new AgentUtil());
  locator.registerSingleton<NetworkUtil>(new NetworkUtil());
  locator.registerSingleton<SocialAuth>(new SocialAuth());


  //App services for data fetch
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => BaseService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => MapService());
  locator.registerLazySingleton(() => RegionsService());

  //App view models for business logic
  locator.registerFactory(() => BaseModel());
  locator.registerFactory(() => UtilsModel());
  locator.registerFactory(() => UserModel());
  locator.registerFactory(() => MapDataModel());
  locator.registerFactory(() => RegionModel());

}
