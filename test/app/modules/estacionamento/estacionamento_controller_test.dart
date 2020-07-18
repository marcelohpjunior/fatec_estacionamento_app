import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fatec_estacionamento/app/modules/estacionamento/estacionamento_module.dart';

void main() {
  initModule(EstacionamentoModule());
  // EstacionamentoController estacionamento;
  //
  setUp(() {
    //     estacionamento = EstacionamentoModule.to.get<EstacionamentoController>();
  });

  group('EstacionamentoController Test', () {
    //   test("First Test", () {
    //     expect(estacionamento, isInstanceOf<EstacionamentoController>());
    //   });

    //   test("Set Value", () {
    //     expect(estacionamento.value, equals(0));
    //     estacionamento.increment();
    //     expect(estacionamento.value, equals(1));
    //   });
  });
}
