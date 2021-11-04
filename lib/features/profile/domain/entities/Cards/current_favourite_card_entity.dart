import 'icons_url_entity.dart';

class CurrentFavouriteCardEntity {
  String name;
  int id;
  int maxLevel;
  IconUrlsEntity iconUrls;

  CurrentFavouriteCardEntity({
    required this.name,
    required this.id,
    required this.maxLevel,
    required this.iconUrls
  });
}