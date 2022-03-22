import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';

abstract class SalvarCarroFavoritoUsecase {
  Future<bool> call(CarroEntity carroEntity);
}
