import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:widgets/src/modules/model/categoria_model.dart';
import 'package:widgets/src/modules/repositories/repository_caracteristica.dart';
part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final RepositoryCaracteristica _caracteristica;

  HomeControllerBase(this._caracteristica);

  @readonly
  var _categoria = <CategoriaModel>[];

  @readonly
  CategoriaModel? _category;

  @observable
  bool isChecked = false;

  @observable
  String? title;

  @observable
  CategoriaModel? setCategoriaSelected;

  @action
  void setTitle(String value) => title = value;

  @action
  void setCheckRadio(bool? value) => isChecked = value!;

  @observable
  int isCheckId = 0;

  @action
  void setCheckId(int value) => isCheckId = value;

  //-------- caracteristicas --------//

  @observable
  int amount = 0;

  @action
  increment() {
    amount++;
  }

  @action
  void decrement() {
    amount <= 0 ? amount : amount--;
  }

  @action
  Future<void> getAllCategoria() async {
    _categoria = await _caracteristica.getAllCategorias();
    log(_categoria.toString());
  }
}
