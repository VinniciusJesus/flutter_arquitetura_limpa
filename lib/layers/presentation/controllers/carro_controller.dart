import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/get_carros_por_cor/get.carros.por.cor.usecase.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUsecase _salvarCarroFavoritoUsecase;

  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUsecase,
  ) {
    getCarrosPorCor("vermelho");
  }

  late CarroEntity carro;

  getCarrosPorCor(String cor) {
    carro = _getCarrosPorCorUseCase(cor);
  }

  salvarCarroFavorito(CarroEntity carro) async {
    var result = await _salvarCarroFavoritoUsecase(carro);
  }
}
