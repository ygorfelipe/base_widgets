// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$_categoriaAtom =
      Atom(name: 'HomeControllerBase._categoria', context: context);

  List<CategoriaModel> get categoria {
    _$_categoriaAtom.reportRead();
    return super._categoria;
  }

  @override
  List<CategoriaModel> get _categoria => categoria;

  @override
  set _categoria(List<CategoriaModel> value) {
    _$_categoriaAtom.reportWrite(value, super._categoria, () {
      super._categoria = value;
    });
  }

  late final _$_categoryAtom =
      Atom(name: 'HomeControllerBase._category', context: context);

  CategoriaModel? get category {
    _$_categoryAtom.reportRead();
    return super._category;
  }

  @override
  CategoriaModel? get _category => category;

  @override
  set _category(CategoriaModel? value) {
    _$_categoryAtom.reportWrite(value, super._category, () {
      super._category = value;
    });
  }

  late final _$isCheckedAtom =
      Atom(name: 'HomeControllerBase.isChecked', context: context);

  @override
  bool get isChecked {
    _$isCheckedAtom.reportRead();
    return super.isChecked;
  }

  @override
  set isChecked(bool value) {
    _$isCheckedAtom.reportWrite(value, super.isChecked, () {
      super.isChecked = value;
    });
  }

  late final _$titleAtom =
      Atom(name: 'HomeControllerBase.title', context: context);

  @override
  String? get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String? value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$setCategoriaSelectedAtom =
      Atom(name: 'HomeControllerBase.setCategoriaSelected', context: context);

  @override
  CategoriaModel? get setCategoriaSelected {
    _$setCategoriaSelectedAtom.reportRead();
    return super.setCategoriaSelected;
  }

  @override
  set setCategoriaSelected(CategoriaModel? value) {
    _$setCategoriaSelectedAtom.reportWrite(value, super.setCategoriaSelected,
        () {
      super.setCategoriaSelected = value;
    });
  }

  late final _$isCheckIdAtom =
      Atom(name: 'HomeControllerBase.isCheckId', context: context);

  @override
  int get isCheckId {
    _$isCheckIdAtom.reportRead();
    return super.isCheckId;
  }

  @override
  set isCheckId(int value) {
    _$isCheckIdAtom.reportWrite(value, super.isCheckId, () {
      super.isCheckId = value;
    });
  }

  late final _$amountAtom =
      Atom(name: 'HomeControllerBase.amount', context: context);

  @override
  int get amount {
    _$amountAtom.reportRead();
    return super.amount;
  }

  @override
  set amount(int value) {
    _$amountAtom.reportWrite(value, super.amount, () {
      super.amount = value;
    });
  }

  late final _$getAllCategoriaAsyncAction =
      AsyncAction('HomeControllerBase.getAllCategoria', context: context);

  @override
  Future<void> getAllCategoria() {
    return _$getAllCategoriaAsyncAction.run(() => super.getAllCategoria());
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCheckRadio(bool? value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setCheckRadio');
    try {
      return super.setCheckRadio(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCheckId(int value) {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.setCheckId');
    try {
      return super.setCheckId(value);
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void increment() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isChecked: ${isChecked},
title: ${title},
setCategoriaSelected: ${setCategoriaSelected},
isCheckId: ${isCheckId},
amount: ${amount}
    ''';
  }
}
