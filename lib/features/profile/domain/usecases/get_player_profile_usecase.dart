import 'package:clash_guide/features/profile/core/errors/search_exception.dart';
import 'package:clash_guide/features/profile/core/usecases/usecases.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:clash_guide/features/profile/domain/repositories/get_player_profile_repository.dart';
import 'package:clash_guide/features/profile/presentation/bloc/get_player_profile_cubit.dart';
import 'package:dartz/dartz.dart';

class GetPlayerProfileUseCaseImpl implements UseCase<PlayerEntity, Params>{

  GetPlayerProfileRepository getPlayerProfileRepository;
  GetPlayerProfileUseCaseImpl(this.getPlayerProfileRepository);

  @override
  Future<Either<SearchException, PlayerEntity>> call(params) async {
    return await getPlayerProfileRepository.getProfile(params.playerTag);
  }
}