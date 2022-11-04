import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _bingusFamily = 'Bingus';
  static const String _addFriendFamily = 'AddFriend';

  // MyFlutterApp
  static const IconData kfileClockIcon =
      IconData(0xe801, fontFamily: _myFlutterAppFamily);
  static const IconData kbusinessWorkingHoursIcon =
      IconData(0xe802, fontFamily: _myFlutterAppFamily);
  static const IconData ksearchPeopleIcon =
      IconData(0xe803, fontFamily: _myFlutterAppFamily);
  static const IconData kuserPersonaIcon =
      IconData(0xe804, fontFamily: _myFlutterAppFamily);
  static const IconData kaddGroupMemberIcon =
      IconData(0xe805, fontFamily: _myFlutterAppFamily);
  static const IconData ksettingsLineIcon =
      IconData(0xe80a, fontFamily: _myFlutterAppFamily);

  // Bingus
  static const IconData ktimecardIcon =
      IconData(0xe806, fontFamily: _bingusFamily);

  // AddFriend
  static const IconData kmaleAddIcon =
      IconData(0xe80a, fontFamily: _addFriendFamily);
}
