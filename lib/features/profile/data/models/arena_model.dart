import 'package:clash_guide/features/profile/domain/entities/arena_entity.dart';

class ArenaModel implements ArenaEntity {
  @override
  late int id;
  @override
  late String name;

  ArenaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}