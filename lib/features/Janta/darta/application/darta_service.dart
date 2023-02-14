import 'package:dartz/dartz.dart';
import 'package:palikaa/core/data/api_exception.dart';
import 'package:palikaa/export_pages.dart';

class Darta{


}


class DartaProider extends StateNotifier{
  DartaProider(super.state);

}




class DartaService {

  Future<Either<String, Map<String, dynamic>>> registerDarta({required Map<String, dynamic> data}) async{
    final dio = Dio();
      try{
        final response = await dio.post('http://test.palikaa.org/api/notice/marriage');
        return  Right(response.data);
      }on DioError catch (err){
       return  Left('');
      }
  }

}

