import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:widgets/src/modules/home/home_controller.dart';
import 'package:widgets/src/modules/home/widgets/add_panel.dart';
import 'package:widgets/src/modules/home/widgets/button_panel.dart';
import 'package:widgets/src/modules/home/widgets/combo_check_panel.dart';
import 'package:widgets/src/modules/home/widgets/imovel_panel.dart';
import 'package:widgets/src/modules/home/widgets/modalidade_panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) {
            return Column(
              children: [
                ModalidadePanel(
                  onModalidadePressed: (value) {
                    log('Modalidade Selecionada $value');
                  },
                ),
                ImovelPanel(
                  onImovelPressed: (value) {
                    log('Imovel Selecionado $value');
                  },
                ),
                ButtonCounterPanel(
                  onButtonPressed: (value) {
                    log('Button Selecionado $value');
                  },
                ),
                const ComboCheckPanel(),
                AddPanel(
                  increment: () => controller.increment(),
                  decrement: () => controller.decrement(),
                  amount: controller.amount,
                  controller: () {},
                ),
                const SizedBox(height: 16),
                AddPanel(
                  increment: () => controller.increment(),
                  decrement: () => controller.decrement(),
                  amount: controller.amount,
                  controller: () {},
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
