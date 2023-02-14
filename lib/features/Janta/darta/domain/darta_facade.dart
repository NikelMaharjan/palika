import 'package:dartz/dartz.dart';



abstract class IDartaFacade {
  Future<Either<String, Map<String, dynamic>>> registerDarta({required Map<String, dynamic> data});
}

