class SettingsCardModel {
  String _heading, _subHeading, _settingsPicture;

  SettingsCardModel(this._heading, this._subHeading, this._settingsPicture);

  String get heading => _heading;
  String get subHeading => _subHeading;

  get settingsPicture => _settingsPicture;
}