


import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:developer' as logDev;

import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:palikaa/api_exceptions.dart';


class DartaServices {


  static Future<String> addBirth(Map data) async {

    final dio = Dio();

   // logDev.log("data is $data");



    print("ward id is  is ${data['ward_id']}");

    print("father issued district id ${data['father_issued_district_id']}");
    print("mother issued district id ${data['mother_issued_district_id']}");

    print("mother ward id ${data['mother_ward_id']}");
    print("mother ward id ${data['mother_ward_id']}");


    print("witness ward id ${data['witness_ward_id']}");



    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/notice/birth", data: data,
          options: Options(headers: {
        HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
        Headers.acceptHeader : 'application/json'
      }));

      return "success";

    }
    on DioError catch(err) {


     // print(err.response!.data['errors']);







      return DioException.fromDioError(err).errorMessage ;

      return "${err.response!.data['message']}";

    }


  }


  static Future<String> addDeath(Map data) async {

    final dio = Dio();

  //   logDev.log("data is $data");


    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/notice/death", data: data,
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            Headers.acceptHeader : 'application/json'
          }));

      return "success";

    }
    on DioError catch(err) {


      //print(err.response!.data['message']);


      //return "${err.response!.data['message']}";

      return DioException.fromDioError(err).errorMessage ;


    }


  }


  static Future<String> addMigration(Map data) async {


    final dio = Dio();

     logDev.log("data is $data");




    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/notice/migration", data: data,
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            Headers.acceptHeader : 'application/json'
          }));

      return "success";

    }
    on DioError catch(err) {


      //print(err.response!.data['errors']);



      return DioException.fromDioError(err).errorMessage ;

    }


  }


  static Future<String> addFamilyMigration(Map data) async {


    final dio = Dio();

    logDev.log("data is $data");


    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/notice/migration-family-member", data: {
        "family_members" : [data]
          },
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            Headers.acceptHeader : 'application/json'
          }));



      return "success";


    }
    on DioError catch(err) {




     print(err.response!.data['message']);



      return DioException.fromDioError(err).errorMessage ;

    }


  }


  static Future<String> addkarmachari(XFile? file) async {

    final dio = Dio();

   //logDev.log("data is $data");

    print("File is $file");
    String fileName = file!.path.split('/').last;
    print("File name is $fileName");


    FormData formData = FormData.fromMap({
      "dp_karmachari_first_name": "jason",
      "dp_karmachari_middle_name": "man",
      "dp_karmachari_last_name": "human",
      "dp_karmachari_designation": "CEO",
      "dp_karmachari_phone_number": "9874585232",
      "dp_wada_id": 1,
      "dp_karmachari_type_id" : 1,
      "dp_karmachari_profile_pic": await MultipartFile.fromFile(
        file.path,
        filename: fileName,
       // contentType: MediaType("image", "jpg"),
      )
    });

    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/karmachari", data: formData,
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            'Accept' : 'application/json',
            'Content-Type': 'multipart/form-data'
          }));


      return "success";


    }
    on DioError catch(err) {


      print(err.response);


      //print(err.response!.data['message']);



      return DioException.fromDioError(err).errorMessage ;

    }


  }
  }


