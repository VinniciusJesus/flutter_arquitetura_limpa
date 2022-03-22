import 'package:arquitetura_limpa/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_limpa/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDatasource {
  final jsonVermelho = {
    "placa": "12345",
    "quantidadeDePortas": 4,
    "valorFInal": 5000.00,
  };

  final jsonAny = {
    "placa": "98765",
    "quantidadeDePortas": 2,
    "valorFInal": 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains("vermelho")) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}
