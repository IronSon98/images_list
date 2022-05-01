// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListItemModel on _ListItemModelBase, Store {
  late final _$imgMediumAtom =
      Atom(name: '_ListItemModelBase.imgMedium', context: context);

  @override
  String get imgMedium {
    _$imgMediumAtom.reportRead();
    return super.imgMedium;
  }

  @override
  set imgMedium(String value) {
    _$imgMediumAtom.reportWrite(value, super.imgMedium, () {
      super.imgMedium = value;
    });
  }

  late final _$imgLargeAtom =
      Atom(name: '_ListItemModelBase.imgLarge', context: context);

  @override
  String get imgLarge {
    _$imgLargeAtom.reportRead();
    return super.imgLarge;
  }

  @override
  set imgLarge(String value) {
    _$imgLargeAtom.reportWrite(value, super.imgLarge, () {
      super.imgLarge = value;
    });
  }

  late final _$_ListItemModelBaseActionController =
      ActionController(name: '_ListItemModelBase', context: context);

  @override
  dynamic setImgMedium(String value) {
    final _$actionInfo = _$_ListItemModelBaseActionController.startAction(
        name: '_ListItemModelBase.setImgMedium');
    try {
      return super.setImgMedium(value);
    } finally {
      _$_ListItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setImgLarge(String value) {
    final _$actionInfo = _$_ListItemModelBaseActionController.startAction(
        name: '_ListItemModelBase.setImgLarge');
    try {
      return super.setImgLarge(value);
    } finally {
      _$_ListItemModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
imgMedium: ${imgMedium},
imgLarge: ${imgLarge}
    ''';
  }
}
