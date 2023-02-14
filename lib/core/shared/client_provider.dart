import '../../export_pages.dart';




final clientProvider = Provider((ref) => Dio(BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 10000,
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
},
    baseUrl: Api.palikaBaseUrl)
)
);

final authClientProvider = Provider((ref) {

  return Dio(BaseOptions(
      // connectTimeout: 10000,
      // receiveTimeout: 10000,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer ',
      },
      baseUrl: Api.palikaBaseUrl
  )
  );
}
);


final clientProvider1 = Provider((ref) => Dio(BaseOptions(
    connectTimeout: 15000,
    receiveTimeout: 15000,
    headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
    },
    baseUrl: "asdsa")
)
);

final authClientProvider1 = Provider((ref) {

  return Dio(BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        HttpHeaders.authorizationHeader: 'Bearer',
      },
      baseUrl: "sss"
  )
  );
}
);
