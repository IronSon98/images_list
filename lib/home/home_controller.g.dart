// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<int>? _$lengthListComputed;

  @override
  int get lengthList =>
      (_$lengthListComputed ??= Computed<int>(() => super.lengthList,
              name: '_HomeControllerBase.lengthList'))
          .value;

  late final _$dataAtom =
      Atom(name: '_HomeControllerBase.data', context: context);

  @override
  ObservableList<dynamic> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<dynamic> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$listItemsAtom =
      Atom(name: '_HomeControllerBase.listItems', context: context);

  @override
  ObservableList<ListItemModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<ListItemModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  late final _$getDataAsyncAction =
      AsyncAction('_HomeControllerBase.getData', context: context);

  @override
  Future<void> getData() {
    return _$getDataAsyncAction.run(() => super.getData());
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void _assignData() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase._assignData');
    try {
      return super._assignData();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
data: ${data},
listItems: ${listItems},
lengthList: ${lengthList}
    ''';
  }
}
