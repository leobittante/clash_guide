import 'package:clash_guide/features/profile/data/models/season/previous_season_model.dart';
import 'package:clash_guide/features/profile/domain/entities/season/best_season_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/season/current_season_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/season/league_statistics_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/season/previousseason_entity.dart';

import 'best_season_model.dart';
import 'current_season_model.dart';

class LeagueStatisticsModel implements LeagueStatisticsEntity {

  @override
  late CurrentSeasonEntity currentSeason;
  @override
  late PreviousSeasonEntity previousSeason;
  @override
  late BestSeasonEntity bestSeason;

  LeagueStatisticsModel.fromJson(Map<String, dynamic> json) {
    currentSeason = (json['currentSeason'] != null
        ? CurrentSeasonModel.fromJson(json['currentSeason'])
        : null) as CurrentSeasonEntity;
    previousSeason = (json['previousSeason'] != null
        ? PreviousSeasonModel.fromJson(json['previousSeason'])
        : null) as PreviousSeasonEntity;
    bestSeason = (json['bestSeason'] != null
        ? BestSeasonModel.fromJson(json['bestSeason'])
        : null) as BestSeasonEntity;
  }
}