import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

const String updateLevel = 'update_level';
const String buildNumber = 'build_number';
const String feedbackUrl = 'feedback_url';

class FirebaseRemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;
  PackageInfo? _packageInfo;

  FirebaseRemoteConfigService({
    FirebaseRemoteConfig? remoteConfig,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  Future initialize() async {
    _packageInfo = await PackageInfo.fromPlatform();

    await _remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 10),
        minimumFetchInterval: const Duration(seconds: 5),
      ),
    );

    // setup default value
    final defaultValue = <String, dynamic>{
      updateLevel: 0,
      buildNumber: _packageInfo?.buildNumber,
      feedbackUrl: 'https://bit.ly/KLARAPPSFB'
    };
    await _remoteConfig.setDefaults(defaultValue);

    try {
      // fetch real data
      await _remoteConfig.fetchAndActivate();
    } on FormatException {
      // **ignore**
      // error due to internet not available
      // will use default value
    } catch (e) {
      rethrow; // allow crashlytic to catch
    }
  }

  int get getUpdateLevel => _remoteConfig.getInt(updateLevel);

  int get getBuildNumber => _remoteConfig.getInt(buildNumber);

  String get getFeedbackUrl => _remoteConfig.getString(feedbackUrl);
}

