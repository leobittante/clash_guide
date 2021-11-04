import 'package:clash_guide/features/profile/data/datasources/get_player_profile_datasource.dart';
import 'package:clash_guide/features/profile/data/repositories/get_player_profile_repositoriy.dart';
import 'package:clash_guide/features/profile/domain/usecases/get_player_profile_usecase.dart';
import 'package:clash_guide/features/profile/presentation/bloc/get_player_profile_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
                leading: const Icon(Icons.account_circle_rounded, size: 35),
                title: const Text('Clash Royale'),
                centerTitle: true),

            body: MultiBlocProvider(
                providers: [
                  BlocProvider<GetPlayerProfileCubit>(
                      create: (context) => GetPlayerProfileCubit(
                          GetPlayerProfileUseCaseImpl(
                              GetPlayerProfileRepositoryImpl(
                                  GetPlayerProfileDataSourceImpl())))
                  )
                ],
                child:  SingleChildScrollView(
                    child: Column(
                      children: [
                      Container(
                          margin: const EdgeInsets.all(8),
                          height: 450,
                          child: BlocBuilder<GetPlayerProfileCubit, GetPlayerProfileState>(
                              builder: (context, state) {
                                //SE O ESTADO FOR INICIAL EXIBE UM LOADING
                                if (state is GetPlayerProfileLoaded) {
                                  //RETORNA NOSSA LISTA DE FLMES PARA USARMOS NA LIST VIEW
                                  final playerEntity = state.playerEntity;
                                  return Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Text("Nome: " + playerEntity.name.toString(),
                                                style: const TextStyle(
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold))),

                                      ]);
                                } //EM CASO DE ERRO EXIBE UM ALERTA
                                else {
                                  return Container();
                                }
                              }
                          )
                      )
                      ],
                    )
                )
            )
        )
    );
  }
}
