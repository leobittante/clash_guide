import 'package:clash_guide/features/profile/data/models/cards/icons_url_model.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/cards_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/icons_url_entity.dart';

class CardsModel implements CardsEntity {

  @override
  late String name;
  @override
  late int id;
  @override
  late int level;
  @override
  late int maxLevel;
  @override
  late int count;
  @override
  late IconUrlsEntity iconUrls;
  @override
  late int starLevel;

  CardsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    level = json['level'];
    maxLevel = json['maxLevel'];
    count = json['count'];
    iconUrls = (json['iconUrls'] != null
        ? IconUrlsModel.fromJson(json['iconUrls'])
        : null) as IconUrlsEntity;
    starLevel = json['starLevel'];
  }
}