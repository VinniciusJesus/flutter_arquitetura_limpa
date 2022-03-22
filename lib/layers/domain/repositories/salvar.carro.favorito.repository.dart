import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';

abstract class SalvarCarroFavoritoRepository {
  Future<bool> call(CarroEntity carroEntity);
}
