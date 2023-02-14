




import 'dart:io';

import 'package:dio/dio.dart';
import 'package:palikaa/api_exceptions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class GunaService {


  static Future<String> addGunaso({required String title, required String description}) async {

    final dio = Dio();
    final storage = new FlutterSecureStorage();


    var token = await storage.read(key: 'token');


    print("tokeeeeeeeeeeen is $token");


    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/gunaso",data: {
        "title" : title,
        "description" : description,
        "user_id" : 1
      }, options: Options(headers: {
        HttpHeaders.authorizationHeader: 'Bearer $token',
        Headers.acceptHeader : 'application/json'
      }));


      return "success";

    }

    on DioError catch (err) {


      return err.message;


    }



  }



}