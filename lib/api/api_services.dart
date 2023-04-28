import 'dart:convert';

import 'package:chefkart/models/dish_details.dart';
import 'package:chefkart/models/dishes.dart';

import 'api_client.dart';

class ApiService {
  static final ApiService _singleton = ApiService._internal();

  factory ApiService() {
    return _singleton;
  }

  late ApiClient apiClient;

  ApiService._internal() {
    apiClient = ApiClient();
  }

  Future<Dishes?> getDishes() {
    return apiClient.get(
      '/dishes/v1/',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return Dishes.fromJson(json.decode(data));
      },
      headers: {},
    );
  }

  Future<DishDetails?> getDishDetails({
    required int id,
  }) {
    return apiClient.get(
      '/dishes/v1/$id',
      parser: (data) {
        if (data == null) {
          return null;
        }
        return DishDetails.fromJson(json.decode(data));
      },
      headers: {},
    );
  }
}
