class UserProfileModel {
  final String _userImage, _userName, _status, _email;

  UserProfileModel(this._userImage, this._userName, this._status, this._email);

  String get userName => _userName;
  get userImage => _userImage;
  get status => _status;
  String get userEmail => _email;
}
