import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CaracteristicaForCategoriaModel {
  final int caracteristicaId;
  final String caracteristicaNome;
  final String status;
  CaracteristicaForCategoriaModel({
    required this.caracteristicaId,
    required this.caracteristicaNome,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caracteristicaId': caracteristicaId,
      'caracteristicaNome': caracteristicaNome,
      'status': status,
    };
  }

  factory CaracteristicaForCategoriaModel.fromMap(Map<String, dynamic> map) {
    return CaracteristicaForCategoriaModel(
      caracteristicaId: map['caracteristicaId'] ?? 0,
      caracteristicaNome: map['caracteristicaNome'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CaracteristicaForCategoriaModel.fromJson(String source) =>
      CaracteristicaForCategoriaModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CaracteristicaForCategoriaModel(caracteristicaId: $caracteristicaId, caracteristicaNome: $caracteristicaNome, status: $status)';
}
