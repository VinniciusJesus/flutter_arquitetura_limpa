import 'package:arquitetura_limpa/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDatasource {
  CarroDto call(String cor);
}
