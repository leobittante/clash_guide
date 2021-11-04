import 'package:clash_guide/features/profile/core/errors/search_exception.dart';
import 'package:clash_guide/features/profile/data/datasources/get_player_profile_datasource.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:clash_guide/features/profile/domain/repositories/get_player_profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetPlayerProfileRepositoryImpl implements GetPlayerProfileRepository {

  GetPlayerProfileDataSource getPlayerProfileDataSource;
  GetPlayerProfileRepositoryImpl(this.getPlayerProfileDataSource);

  @override
  Future<Either<SearchException, PlayerEntity>> getProfile(String playerTag) async{
    try{
      final PlayerEntity playerEntity = await getPlayerProfileDataSource.getProfile(playerTag);
      return Right(playerEntity);
    } on SearchException catch (e){
      return Left(e);
    } on Exception {
      return Left(SearchException("Erro ao buscar perfil"));
    }
  }
}