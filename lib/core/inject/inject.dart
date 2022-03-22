import 'package:arquitetura_limpa/layers/data/datasource/get_carros_por_cor_datasource.dart';
import 'package:arquitetura_limpa/layers/data/datasource/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:arquitetura_limpa/layers/data/repositories/get_carros_por_cor_repository_imp_.dart';
import 'package:arquitetura_limpa/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/salvar.carro.favorito.repository.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.imp.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.imp.dart';
import 'package:arquitetura_limpa/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<GetCarrosPorCorDatasource>(
      () => GetCarrosPorCorLocalDatasourceImp(),
    );

    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(getIt()),
    );

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );

    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImp(getIt()),
    );

    getIt.registerLazySingleton<SalvarCarroFavoritoUsecase>(
      () => SalvarCarroFavoritoUsecaseImp(getIt()),
    );

    getIt.registerFactory<CarroController>(() => CarroController(
          getIt(),
          getIt(),
        ));
  }
}

//! datasource
//! repositories
//! usecases
//! controllers
