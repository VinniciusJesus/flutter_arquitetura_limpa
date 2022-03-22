import '../../domain/entities/carro.entity.dart';
import '../../domain/repositories/salvar.carro.favorito.repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.valor > 0;
  }
}
