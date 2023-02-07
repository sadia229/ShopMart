import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:shopmart/apps/test/model/area_model.dart';
import 'package:shopmart/general/api/base_client.dart';
import 'package:shopmart/general/constants/urls.dart';

AreaLocationModel? areaLocationModel;

class BillsRepository {
  Future<AreaLocationModel> getAreaLocation({context}) async {
    try {
      var response = await BaseClient.get(
        url: Urls.billUrl,
      );
      if (response.statusCode == 200) {
        areaLocationModel = AreaLocationModel.fromJson(response.data);
      }
      if (response.statusCode == 404) {
        areaLocationModel = AreaLocationModel.fromJson(response.data);
        log('No address data found');
      }
      return areaLocationModel!;
    } on DioError catch (e) {
      rethrow;
    }
  }
}
