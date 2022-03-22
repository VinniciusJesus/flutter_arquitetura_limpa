import 'package:arquitetura_limpa/core/inject/inject.dart';
import 'package:arquitetura_limpa/layers/presentation/ui/pages/carro_page.dart';
import 'package:flutter/material.dart';

void main() {
  Inject.init();
  runApp(MaterialApp(
    home: CarroPage(),
  ));
}
