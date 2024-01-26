import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/merchan_models.dart';

class Api {
  Future<List<MerchantModels>> readMerchant() async {
    dynamic decoded;
    for (int i = 0; i <= 5; i++) {
      if (i % 2 == 1) {
        print('throw');
        throw Exception('Failed get data from API');
      } else {
        print('200 OK!');
        // Pura2 get API
        final jsonData = await rootBundle.loadString('assets/json/data.json');
        decoded = json.decode(jsonData) as List<dynamic>;
      }
    }
    return decoded.map((e) => MerchantModels.fromJson(e)).toList();
  }

  Future<String> reviewMerchant(MerchantModels data) async {
    print('Get Id merchant');
    // Simulasi Delay
    Future.delayed(const Duration(seconds: 5), () {});
    // return data
    return '${data.name} ${data.id}';
  }
}
