import 'dart:convert';

import 'package:basic_2/controller/car_controller.dart';
import 'package:basic_2/models/car_models.dart';
import 'package:flutter/services.dart';

import '../models/merchan_models.dart';

class ApiRepository {
  Future<List<CarModels>> readCars() async {
    final jsonData = await rootBundle.loadString('assets/json/data_mobil.json');
    final decoded = json.decode(jsonData) as List<dynamic>;
    return decoded.map((e) => CarModels.fromJson(e)).toList();
  }
}
