import 'package:clash_guide/features/profile/domain/entities/Cards/icons_url_entity.dart';

class IconUrlsModel implements IconUrlsEntity {

  @override
  late String medium;

  IconUrlsModel.fromJson(Map<String, dynamic> json) {
    medium = json['medium'];
  }
}
