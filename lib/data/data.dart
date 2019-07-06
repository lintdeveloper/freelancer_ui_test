import 'package:freelancer_ui_test/models/settings_card.dart';
import 'package:freelancer_ui_test/models/user_profile_model.dart';
import 'package:freelancer_ui_test/models/user_profile_model.dart';
import 'package:freelancer_ui_test/models/user_profile_model.dart';

List<SettingsCardModel> getSettingsCard() {
  List<SettingsCardModel> settingsCard = [
    SettingsCardModel("Profile Settings", "Update and modify your profile",
        "assets/images/settings.png"),
    SettingsCardModel("Privacy", "Change your password",
        "assets/images/security.png"),
    SettingsCardModel("Notifications", "Change your notifications settings",
        "assets/images/notification.png"),
  ];

  return settingsCard;
}

List<UserProfileModel> getUserProfileCard() {
  List<UserProfileModel> userProfileCard = [
    UserProfileModel("assets/images/ricardo.png","Ricardo Joseph","assets/images/verified.png",  "ricardojoseph@gmail.com")
  ];

  return userProfileCard;
}


