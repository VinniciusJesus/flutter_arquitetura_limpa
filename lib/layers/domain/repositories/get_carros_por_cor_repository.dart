import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';

abstract class GetCarrosPorCorRepository {
  CarroEntity call(String cor);
}
