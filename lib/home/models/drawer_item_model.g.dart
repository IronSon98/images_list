// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DrawerItemModel on _DrawerItemModelBase, Store {
  late final _$settingNameAtom =
      Atom(name: '_DrawerItemModelBase.settingName', context: context);

  @override
  String get settingName {
    _$settingNameAtom.reportRead();
    return super.settingName;
  }

  @override
  set settingName(String value) {
    _$settingNameAtom.reportWrite(value, super.settingName, () {
      super.settingName = value;
    });
  }

  late final _$activeSettingAtom =
      Atom(name: '_DrawerItemModelBase.activeSetting', context: context);

  @override
  bool get activeSetting {
    _$activeSettingAtom.reportRead();
    return super.activeSetting;
  }

  @override
  set activeSetting(bool value) {
    _$activeSettingAtom.reportWrite(value, super.activeSetting, () {
      super.activeSetting = value;
    });
  }

  late final _$_DrawerItemModelBaseActionController =
      ActionController(name: '_DrawerItemModelBase', context: context);

  @override
  dynamic setSettingName(String value) {
    final _$actionInfo = _$_DrawerItemModelBaseActionController.startAction(
        name: '_DrawerItemModelBase.setSettingName');
    try {
      return super.setSettingName(value);
    } finally {
      _$_DrawerItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setActiveSetting(bool value) {
    final _$actionInfo = _$_DrawerItemModelBaseActionController.startAction(
        name: '_DrawerItemModelBase.setActiveSetting');
    try {
      return super.setActiveSetting(value);
    } finally {
      _$_DrawerItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
settingName: ${settingName},
activeSetting: ${activeSetting}
    ''';
  }
}
