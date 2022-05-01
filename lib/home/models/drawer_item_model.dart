import 'package:mobx/mobx.dart';

part 'drawer_item_model.g.dart';

class DrawerItemModel = _DrawerItemModelBase with _$DrawerItemModel;

abstract class _DrawerItemModelBase with Store {
  _DrawerItemModelBase(this.settingName, this.activeSetting);

  @observable
  String settingName = '';

  @observable
  bool activeSetting = false;

  @action
  setSettingName(String value) => settingName = value;

  @action
  setActiveSetting(bool value) => activeSetting = value;
}
