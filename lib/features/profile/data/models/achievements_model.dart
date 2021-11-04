import 'package:clash_guide/features/profile/domain/entities/achievements_entity.dart';

class AchievementsModel implements AchievementsEntity {

  @override
  late String name;
  @override
  late int stars;
  @override
  late int value;
  @override
  late int target;
  @override
  late String info;
  @override
  late String completionInfo;

  AchievementsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    stars = json['stars'];
    value = json['value'];
    target = json['target'];
    info = json['info'];
    completionInfo = json['completionInfo'];
  }
}