import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Deve retornar uma instancia de carro quando passado qualquer cor", () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase("azul");

    expect(result, isInstanceOf<CarroEntity>());
  });

  test("Deve retornar um carro de 4 portas quando vermelho", () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase("vermelho");

    expect(result.qtdPortas, 4);
  });

  test(
      "Deve retornar um carro de 2 portas quando for qualquer cor exceto vermelho",
      () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp();

    var result = useCase("verde");

    expect(result.qtdPortas, 2);
  });
}
