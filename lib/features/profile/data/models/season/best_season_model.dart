import 'package:clash_guide/features/profile/domain/entities/season/best_season_entity.dart';

class BestSeasonModel implements BestSeasonEntity {

  @override
  late String id;
  @override
  late int trophies;

  BestSeasonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trophies = json['trophies'];
  }
}
