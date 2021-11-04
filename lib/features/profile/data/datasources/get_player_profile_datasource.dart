import 'package:clash_guide/features/Endpoints/endpoints.dart';
import 'package:clash_guide/features/profile/data/models/player_model.dart';
import 'package:clash_guide/features/profile/domain/entities/player_entity.dart';
import 'package:dio/dio.dart';

abstract class GetPlayerProfileDataSource {
  Future<PlayerEntity> getProfile(String playerTag);
}

class GetPlayerProfileDataSourceImpl implements GetPlayerProfileDataSource {

  final Dio dio = Dio();
  late Response response;

  @override
  Future<PlayerEntity> getProfile(String playerTag) async{

    response = await dio.get(Endpoints.playerProfile + playerTag, queryParameters: Endpoints.queryParameters);

    if(response.statusCode == 200){
      final PlayerModel playerModel = PlayerModel.fromJson(response.data);
      return playerModel;
    } else {
    throw Exception('Falha ao consultar API');
    }
  }
}