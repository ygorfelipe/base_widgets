import 'dart:developer';

import 'package:widgets/src/modules/home/home_controller.dart';
import 'package:widgets/src/modules/model/categoria_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import 'package:expansion_tile_card/expansion_tile_card.dart';

class ComboCheckPanel extends StatefulWidget {
  const ComboCheckPanel({super.key});

  @override
  State<ComboCheckPanel> createState() => _ComboCheckPanelState();
}

class _ComboCheckPanelState extends State<ComboCheckPanel> {
  final controller = Modular.get<HomeController>();

  late final ReactionDisposer statusDisposer;

  @override
  void initState() {
    super.initState();
    controller.getAllCategoria();
  }

  @override
  void dispose() {
    statusDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: controller.categoria.length,
        itemBuilder: (context, index) {
          final resultCategoria = controller.categoria[index];
          final titulo = resultCategoria.nome;
          return ExpansionTileCard(
            title: Text(titulo),
            children: List.generate(
              resultCategoria.caracteristicas.length,
              (indexG) {
                final resCaract = resultCategoria.caracteristicas[indexG];
                final subTitle = resCaract.caracteristicaNome;

                return ListTile(
                  title: Text(
                    subTitle,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  leading: Checkbox(
                    checkColor: Colors.white,
                    value: controller.isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        controller.setCheckRadio(value);
                        log('$subTitle -> index $indexG');
                      });
                    },
                  ),
                );
              },
            ),
          );
        },
      );
    });
  }

  ExpansionTileCard _Oficial(
      String titulo, CategoriaModel resultCategoria, bool isCheck) {
    return ExpansionTileCard(
      title: Text(titulo),
      children: [
        ListView.separated(
          separatorBuilder: (context, index) =>
              const Divider(height: 2, indent: 5, endIndent: 5),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: resultCategoria.caracteristicas.length,
          itemBuilder: (context, indexL) {
            final resultSeconData = resultCategoria.caracteristicas[indexL];
            final subTitle = resultSeconData.caracteristicaNome;
            return Row(
              children: [
                Text(subTitle, style: const TextStyle(fontSize: 12)),
                Checkbox(
                  value: isCheck,
                  activeColor: Colors.red,
                  onChanged: (newValue) {
                    setState(() {
                      isCheck = newValue!;
                      log('Cliccou no valor $indexL');
                    });
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
