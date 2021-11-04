import 'package:clash_guide/features/profile/domain/entities/season/previousseason_entity.dart';

class PreviousSeasonModel implements PreviousSeasonEntity {

  @override
  late String id;
  @override
  late int trophies;
  @override
  late int bestTrophies;

  PreviousSeasonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trophies = json['trophies'];
    bestTrophies = json['bestTrophies'];
  }
}