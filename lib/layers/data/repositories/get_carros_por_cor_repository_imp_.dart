import '../../domain/entities/carro.entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';
import '../dtos/carro_dto.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    var json = {
      "placa": "placa",
      "quantidadeDePortas": 2,
      "valorFInal": 2000.00,
    };

    return CarroDto.fromMap(json);
  }
}
