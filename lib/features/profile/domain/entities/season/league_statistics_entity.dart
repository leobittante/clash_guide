import 'package:clash_guide/features/profile/domain/entities/season/previousseason_entity.dart';
import 'best_season_entity.dart';
import 'current_season_entity.dart';

class LeagueStatisticsEntity {
  CurrentSeasonEntity currentSeason;
  PreviousSeasonEntity previousSeason;
  BestSeasonEntity bestSeason;

  LeagueStatisticsEntity({
    required this.currentSeason,
    required this.previousSeason,
    required this.bestSeason});
}