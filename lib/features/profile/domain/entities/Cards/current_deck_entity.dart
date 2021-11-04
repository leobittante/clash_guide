import 'icons_url_entity.dart';

class CurrentDeckEntity {
  String name;
  int id;
  int level;
  int starLevel;
  int maxLevel;
  int count;
  IconUrlsEntity iconUrls;

  CurrentDeckEntity({
    required this.name,
    required this.id,
    required this.level,
    required this.starLevel,
    required this.maxLevel,
    required this.count,
    required this.iconUrls});
}