

import 'package:dio/dio.dart';
import 'package:palikaa/api_exceptions.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class AuthService {


  static Future<String> userLogin({required String username, required String password}) async{




    print(username);


    final dio = Dio();
    final storage = new FlutterSecureStorage();

    try{
      
      final response = await dio.post("https://test.digitalpalika.org/api/login", data: {
        "email" : username,
        "password" : password,
        "fcm_token" : "Something"
      });

      //print(response.data["access_token"]);

      await storage.write(key: 'token', value: response.data["access_token"]);
      // var value = await storage.read(key: 'token');
      // print("Value is $value");


      //return response.data["access_token"];

      return "success";


    }

    on DioError catch (err){

      return DioException.fromDioError(err).errorMessage ;
    }






  }



}