import 'package:clash_guide/features/profile/domain/entities/Cards/current_deck_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/icons_url_entity.dart';

import 'icons_url_model.dart';

class CurrentDeckModel implements CurrentDeckEntity {

  @override
  late String name;
  @override
  late int id;
  @override
  late int level;
  @override
  late int starLevel;
  @override
  late int maxLevel;
  @override
  late int count;
  @override
  late IconUrlsEntity iconUrls;

  CurrentDeckModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    level = json['level'];
    starLevel = json['starLevel'];
    maxLevel = json['maxLevel'];
    count = json['count'];
    iconUrls = (json['iconUrls'] != null
        ? IconUrlsModel.fromJson(json['iconUrls'])
        : null) as IconUrlsEntity;
  }
}