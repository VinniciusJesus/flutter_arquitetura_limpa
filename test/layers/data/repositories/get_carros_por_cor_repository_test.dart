import 'package:arquitetura_limpa/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_test.dart';

main() {
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp();

  test("Devolva um carro independente da cor", () {
    var result = repository("qualquer");

    expect(result, isNotNull);
  });
}
