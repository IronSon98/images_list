import 'package:mobx/mobx.dart';

part 'list_item_model.g.dart';

class ListItemModel = _ListItemModelBase with _$ListItemModel;

abstract class _ListItemModelBase with Store {
  _ListItemModelBase(this.imgMedium, this.imgLarge);

  @observable
  String imgMedium = '';

  @observable
  String imgLarge = '';

  @action
  setImgMedium(String value) => imgMedium = value;

  @action
  setImgLarge(String value) => imgLarge = value;
}
