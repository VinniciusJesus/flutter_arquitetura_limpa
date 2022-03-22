import 'package:arquitetura_limpa/layers/data/datasource/get_carros_por_cor_datasource.dart';

import '../../domain/entities/carro.entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDatasource _getCarrosPorCorDatasource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDatasource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDatasource(cor);
  }
}
