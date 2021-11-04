import 'package:clash_guide/features/profile/domain/entities/badges_entity.dart';

class BadgesModel implements BadgesEntity {

  @override
  late String name;
  @override
  late int progress;
  @override
  late int level;
  @override
  late int maxLevel;

  BadgesModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    progress = json['progress'];
    level = json['level'];
    maxLevel = json['maxLevel'];
  }
}