import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/salvar.carro.favorito.repository.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}

main() {
  test("Espero que salve o carro com sucesso", () async {
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUsecaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(placa: "placa", qtdPortas: 2, valor: 1);

    var result = await useCase(carro);

    expect(result, true);
  });

  test("Espero que nao salve o carro quando o valor for menor ou igual a 0",
      () async {
    SalvarCarroFavoritoUsecase useCase = SalvarCarroFavoritoUsecaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    var carro = CarroEntity(placa: "placa", qtdPortas: 2, valor: 0);

    var result = await useCase(carro);

    expect(result, false);
  });
}
