import 'package:clash_guide/features/profile/core/errors/search_exception.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetPlayerProfileRepository {
  Future<Either<SearchException, PlayerEntity>> getProfile(String playerTag);
}