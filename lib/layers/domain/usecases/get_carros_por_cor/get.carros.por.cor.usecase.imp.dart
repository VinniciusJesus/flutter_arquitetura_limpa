import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  @override
  CarroEntity call(String cor) {
    if (cor.contains("vermelho")) {
      return CarroEntity(placa: "12345", qtdPortas: 4, valor: 50000.00);
    }
    return CarroEntity(placa: "98765", qtdPortas: 2, valor: 20000.00);
  }
}
