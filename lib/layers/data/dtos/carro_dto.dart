import 'package:arquitetura_limpa/layers/domain/entities/carro.entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFInal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFInal,
  }) : super(
          placa: placa,
          valor: valorFInal,
          qtdPortas: quantidadeDePortas,
        );

  Map toMap() {
    return {
      "placa": this.placa,
      "quantidadeDePortas": this.quantidadeDePortas,
      "valorFInal": this.valorFInal
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map["placa"],
      quantidadeDePortas: map["quantidadeDePortas"],
      valorFInal: map["valorFInal"],
    );
  }
}
