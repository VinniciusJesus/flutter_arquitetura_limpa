import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';
import 'package:arquitetura_limpa/layers/domain/repositories/salvar.carro.favorito.repository.dart';
import 'package:arquitetura_limpa/layers/domain/usecases/salvar_carro_favorito/salvar.carro.favorito.usecase.dart';

class SalvarCarroFavoritoUsecaseImp implements SalvarCarroFavoritoUsecase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;

  SalvarCarroFavoritoUsecaseImp(this._salvarCarroFavoritoRepository);

  @override
  Future<bool> call(CarroEntity carroEntity) async {
    carroEntity.setLogica();
    return await _salvarCarroFavoritoRepository(carroEntity);
  }
}
