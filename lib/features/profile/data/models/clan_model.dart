import 'package:clash_guide/features/profile/domain/entities/clan_entity.dart';

class ClanModel implements ClanEntity {

   @override
  late String tag;
   @override
  late String name;
   @override
  late int badgeId;

  ClanModel.fromJson(Map<String, dynamic> json) {
  tag = json['tag'];
  name = json['name'];
  badgeId = json['badgeId'];
  }
}