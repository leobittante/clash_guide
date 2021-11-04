import 'package:clash_guide/features/profile/core/errors/search_exception.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase <Type, Params>{
  Future<Either<SearchException, Type>> call(Params params);
}
