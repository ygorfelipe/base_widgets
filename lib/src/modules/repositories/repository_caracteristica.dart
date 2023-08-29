import 'dart:convert';

import 'package:widgets/src/modules/model/categoria_model.dart';
import 'package:widgets/src/modules/repositories/data_categoria.dart';

class RepositoryCaracteristica {
  final DataCategoria _dataCategoria = DataCategoria();

  Future<List<CategoriaModel>> getAllCategorias() async {
    final response = json.decode(_dataCategoria.data);
    final resultData = response['data'];
    final result = (resultData['data'] as List)
        .map<CategoriaModel>((r) => CategoriaModel.fromMap(r))
        .toList();
    return result;
  }
}
