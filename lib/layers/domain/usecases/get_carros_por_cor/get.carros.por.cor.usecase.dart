import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';

abstract class GetCarrosPorCorUseCase {
  CarroEntity call(String cor);
}
