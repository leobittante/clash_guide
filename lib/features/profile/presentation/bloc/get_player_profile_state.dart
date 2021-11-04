part of 'get_player_profile_cubit.dart';

@immutable
abstract class GetPlayerProfileState {}

class GetPlayerProfileInitial extends GetPlayerProfileState {}

class GetPlayerProfileLoaded extends GetPlayerProfileState {

  final PlayerEntity playerEntity;
  GetPlayerProfileLoaded(this.playerEntity);

  Future<Object> get props async => [playerEntity];
}

class GetPlayerProfileLoading extends GetPlayerProfileState {}

class GetPlayerProfileError extends GetPlayerProfileState {}