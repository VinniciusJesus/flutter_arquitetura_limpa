import 'package:arquitetura_limpa/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_limpa/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura_limpa/layers/data/repositories/get_carros_por_cor_repository_imp_.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  GetCarrosPorCorDatasource dataSource = GetCarrosPorCorLocalDatasourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test("Devolva um carro independente da cor", () {
    var result = repository("qualquer");

    expect(result, isNotNull);
  });
}
