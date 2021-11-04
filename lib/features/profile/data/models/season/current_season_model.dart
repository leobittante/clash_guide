import 'package:clash_guide/features/profile/domain/entities/season/current_season_entity.dart';

class CurrentSeasonModel implements CurrentSeasonEntity {

  @override
  late int trophies;
  @override
  late int bestTrophies;

  CurrentSeasonModel.fromJson(Map<String, dynamic> json) {
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
  }
}