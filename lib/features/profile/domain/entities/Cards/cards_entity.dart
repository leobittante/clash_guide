import 'icons_url_entity.dart';

class CardsEntity {
  String name;
  int id;
  int level;
  int maxLevel;
  int count;
  IconUrlsEntity iconUrls;
  int starLevel;

  CardsEntity({
    required this.name,
    required this.id,
    required this.level,
    required this.maxLevel,
    required this.count,
    required this.iconUrls,
    required this.starLevel
  });

}