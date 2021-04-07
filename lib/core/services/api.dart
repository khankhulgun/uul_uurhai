import 'package:dio/dio.dart';
import 'package:catalog/core/models/user.dart';
import 'package:catalog/core/models/map_data.dart';
import 'package:lambda/modules/network_util.dart';
import '../../locator.dart';

class Api {
  NetworkUtil _http = locator<NetworkUtil>();
  Future<void> updateUser(User user, dynamic avatar) async {
    FormData formData = FormData.fromMap({
      "avatar": avatar.toString(),
      "first_name": user.firstName,
      "last_name": user.lastName,
      "phone": user.phone,
      "gender": user.gender,
      "file": await MultipartFile.fromFile(avatar.toString(),filename: "avart.png"),
    });
    await Dio().post('/loyalty/update/profile/${user.id}', data: formData);
  }

  Future<MapData> getMapData() async {
    var response = await _http.get_("/api/init");
    return new MapData.fromJson(response.data);

  }
}
