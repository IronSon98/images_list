import 'package:mobx/mobx.dart';

part 'drawer_item_model.g.dart';

class DrawerItemModel = _DrawerItemModelBase with _$DrawerItemModel;

abstract class _DrawerItemModelBase with Store {
  _DrawerItemModelBase(this.id, this.settingName, this.activeSetting);

  @observable
  int id = 0;

  @observable
  String settingName = '';

  @observable
  bool activeSetting = false;

  @computed
  int get idSetting => id;

  @computed
  bool get isActive => activeSetting;

  @action
  setSettingId(int value) => id = value;

  @action
  setSettingName(String value) => settingName = value;

  @action
  setActiveSetting(bool value) => activeSetting = value;
}
