import 'package:arquitetura_limpa/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura_limpa/layers/data/repositories/get_carros_por_cor_repository_imp_.dart';
import 'package:arquitetura_limpa/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.imp.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.imp.dart';
import 'package:flutter/material.dart';

import '../../controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  CarroController controller = CarroController(
    GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp(
      GetCarrosPorCorLocalDatasourceImp(),
    )),
    SalvarCarroFavoritoUsecaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
