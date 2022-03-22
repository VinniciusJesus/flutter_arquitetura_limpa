import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../controllers/carro_controller.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  final controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controller.carro.placa),
      ),
    );
  }
}
