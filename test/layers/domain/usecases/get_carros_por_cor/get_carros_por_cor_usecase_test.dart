import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.imp.dart';
import 'package:flutter_test/flutter_test.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    if (cor.contains("vermelho")) {
      return CarroEntity(placa: "12345", qtdPortas: 4, valor: 50000.00);
    }
    return CarroEntity(placa: "98765", qtdPortas: 2, valor: 20000.00);
  }
}

void main() {
  test("Deve retornar uma instancia de carro quando passado qualquer cor", () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase("azul");

    expect(result, isInstanceOf<CarroEntity>());
  });

  test("Deve retornar um carro de 4 portas quando vermelho", () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase("vermelho");

    expect(result.qtdPortas, 4);
  });

  test(
      "Deve retornar um carro de 2 portas quando for qualquer cor exceto vermelho",
      () {
    GetCarrosPorCorUseCase useCase =
        GetCarrosPorCorUseCaseImp(GetCarrosPorCorRepositoryImp());

    var result = useCase("verde");

    expect(result.qtdPortas, 2);
  });
}
