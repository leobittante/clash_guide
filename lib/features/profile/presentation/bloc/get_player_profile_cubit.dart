import 'package:bloc/bloc.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:clash_guide/features/profile/domain/usecases/get_player_profile_usecase.dart';
import 'package:meta/meta.dart';

part 'get_player_profile_state.dart';

class GetPlayerProfileCubit extends Cubit<GetPlayerProfileState> {

  GetPlayerProfileUseCaseImpl getPlayerProfileUseCase;
  GetPlayerProfileCubit(this.getPlayerProfileUseCase) : super(GetPlayerProfileInitial()){
    _getPlayerProfile('#98Q8JPJJ');
  }

  _getPlayerProfile(String playerTag) async {

    final getPlayerProfile = await getPlayerProfileUseCase(Params(playerTag: playerTag));
    getPlayerProfile.fold(
            (searchFailure) => emit(GetPlayerProfileError()),
            (playerProfile) => emit(GetPlayerProfileLoaded(playerProfile)));
  }
}

class Params {
  final String playerTag;
  const Params({required this.playerTag});
}
