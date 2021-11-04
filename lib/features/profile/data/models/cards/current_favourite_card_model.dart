import 'package:clash_guide/features/profile/data/models/cards/icons_url_model.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/current_favourite_card_entity.dart';
import 'package:clash_guide/features/profile/domain/entities/Cards/icons_url_entity.dart';

class CurrentFavouriteCardModel implements CurrentFavouriteCardEntity {

  @override
  late String name;
  @override
  late int id;
  @override
  late int maxLevel;
  @override
  late IconUrlsEntity iconUrls;

  CurrentFavouriteCardModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    maxLevel = json['maxLevel'];
    iconUrls = (json['iconUrls'] != null
        ? IconUrlsModel.fromJson(json['iconUrls'])
        : null) as IconUrlsEntity;
  }
}