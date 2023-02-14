import 'package:palikaa/export_pages.dart';




final dataShow = FutureProvider.family((ref, String token) => MarriageData.getData(token));


class MarriageData{
  static Future getData (String token) async{
    final dio = Dio();
    try{
      final response = await dio.get('https://test.palikaa.org/api/notice/marriage',
          options: Options(
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
              HttpHeaders.authorizationHeader: 'Bearer $token',
            },

          )
      );
      return response.data;

    }on DioError catch (err){
      throw '';
    }

  }
}

class ShowPage extends ConsumerWidget{


  @override
  Widget build(BuildContext context, ref) {

    final show = ref.watch(dataShow('lkjkn'));
    return Scaffold(
        body: SafeArea(
          child: show.when(
              data: (data){
                return  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(child: Text('$data')),
                    )
                );
              },
              error: (err, stack) => Center(child: Text('$err')),
              loading: () => Center(child: CircularProgressIndicator())
          ),
        )
    );
  }
}
