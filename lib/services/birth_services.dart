


import 'dart:io';
import 'package:dio/dio.dart';
import 'dart:developer' as logDev;
import 'package:palikaa/api_exceptions.dart';
import 'package:palikaa/export_pages.dart';


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


  static Future<String> addkarmachari() async {

    final dio = Dio();

   // logDev.log("data is $data");
   //
   //
   //  print("Image is ${data['dp_karmachari_profile_pic']}");
   //
   //  String fileName = data['dp_karmachari_profile_pic']!.path.split('/').last;
   //
   //  print("File name is $fileName");

    //
    //
    // FormData formData = FormData.fromMap({
    //   "dp_karmachari_first_name": data['dp_karmachari_first_name'],
    //   "dp_karmachari_middle_name": data['dp_karmachari_middle_name'],
    //   "dp_karmachari_last_name": data['dp_karmachari_last_name'],
    //   "dp_karmachari_designation": data['dp_karmachari_designation'],
    //   "dp_karmachari_phone_number": data['dp_karmachari_phone_number'],
    //   "dp_wada_id": data['dp_wada_id'],
    //   "dp_karmachari_type_id" : data['dp_karmachari_type_id'],
    //   "dp_karmachari_profile_pic": await MultipartFile.fromFile(
    //     data['dp_karmachari_profile_pic'].path,
    //     filename: fileName,
    //     contentType: MediaType("image", "jpg"),
    //   )
    // });


    try{

      final response =  await dio.post("https://test.digitalpalika.org/api/karmachari", data: {

      },
          options: Options(headers: {
            'Authorization': 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            'Accept' : 'application/json',
            'Content-Type': 'multipart/form-data',

            // HttpHeaders.authorizationHeader: 'Bearer 81|oPlfTAFnTEwdLEGLQX7M08gKlrDOGgNdPG4QG7dN',
            // Headers.acceptHeader : 'application/json',
          }));

      print("Response is $response");

      return "success";


    }
    on DioError catch(err) {


      print(err.response);


      //print(err.response!.data['message']);

      return DioException.fromDioError(err).errorMessage ;

    }


  }


  static Future<String> addPratinidhi(Map data) async {

    final dio = Dio();

    logDev.log("data is $data");

    //print("Image is ${data['dp_pratinidhi_profile_pic']}");

    String imageName = data['dp_pratinidhi_profile_pic']!.path.split('/').last;
    String fileName = data['dp_pratinidhi_parichayapatra_file']!.path.split('/').last;

    print("Image name is $imageName");

    FormData formData = FormData.fromMap({
      "dp_pratinidhi_first_name": data['dp_pratinidhi_first_name'],
      "dp_pratinidhi_middle_name": data['dp_pratinidhi_middle_name'],
      "dp_karmachari_last_name": data['dp_pratinidhi_last_name'],
      "dp_pratinidhi_designation": data['dp_pratinidhi_designation'],
      "dp_pratinidhi_gender": data['dp_pratinidhi_gender'],
      "dp_pratinidhi_contact": data['dp_pratinidhi_contact'],
      "dp_pratinidhi_dob": data['dp_pratinidhi_dob'],
      "dp_wada_id": data['dp_wada_id'],
      "dp_pratinidhi_profile_pic": await MultipartFile.fromFile(
        data['dp_pratinidhi_profile_pic'].path,
        filename: imageName,
        // contentType: MediaType("image", "jpg"),
      ),

      "dp_pratinidhi_parichayapatra_file": await MultipartFile.fromFile(
        data['dp_pratinidhi_parichayapatra_file'].path,
        filename: fileName,
      ),
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


      print(err);


      //print(err.response!.data['message']);

      return DioException.fromDioError(err).errorMessage ;

    }


  }


  }


