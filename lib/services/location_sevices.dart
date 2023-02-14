


import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palikaa/api_exceptions.dart';
import 'package:palikaa/models/location_model.dart';



final provinceProvider = FutureProvider((ref) => LocationService.getProvinces());


class LocationService {

   static List province = [];

  static Future<List<Provincee>> getProvinces() async {


    final dio = Dio();

    try{

      final response = await dio.get("https://test.digitalpalika.org/api/provinces");
      final data = (response.data as List).map((e) => Provincee.fromJson(e)).toList();
      print(data);
      province.add(data);
      return data;


    }

    on DioError catch (err) {

      throw DioException.fromDioError(err).errorMessage;

    }





  }




}