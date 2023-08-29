// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'caracteristica_for_categoria_model.dart';

class CategoriaModel {
  final String nome;
  final List<CaracteristicaForCategoriaModel> caracteristicas;
  CategoriaModel({
    required this.nome,
    required this.caracteristicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'caracteristicas': caracteristicas.map((x) => x.toMap()).toList(),
    };
  }

  factory CategoriaModel.fromMap(Map<String, dynamic> map) {
    return CategoriaModel(
      nome: map['nome'] as String,
      caracteristicas: (map['caracteristicas']
              ?.map<CaracteristicaForCategoriaModel>(
                  (x) => CaracteristicaForCategoriaModel.fromMap(x))
              .toList() ??
          <CaracteristicaForCategoriaModel>[]),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriaModel.fromJson(String source) =>
      CategoriaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CategoriaModel(nome: $nome, caracteristicas: $caracteristicas)';
}
