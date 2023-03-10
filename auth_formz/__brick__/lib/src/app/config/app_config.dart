import 'package:zot_ecommerce/src/app/config/flavor_config.dart';

/// A config that serves as a source of configuration regarding this app in general.
///
/// Such as appName, version, etc related to the application.
/// And here you can also use FlavorConfig to create different values for each environment.
///
///
/// Example:
///
/// ```dart
/// static const appName = FlavorConfig<String>(
///    dev: 'App Dev',
///    prod: 'App',
///  );
///
/// static const versionCode = '1.0.0';
/// ```
///
/// And to check the configuration in the other code like this:
///
/// ```dart
/// Text(AppConfig.emailCS.value) // when use flavor add (.value) is the end
/// Text(AppConfig.versionCode) // when not use flavor
///
/// ```
class AppConfig {
  const AppConfig._();

  /// App Name
  static const appName = FlavorConfig<String>(
    dev: '[DEV] Kick Avenue',
    stag: '[STAG] Kick Avenue',
    prod: 'Kick Avenue',
  );

  /// App Banner Name
  static const appBannerName = FlavorConfig<String>(
    dev: '[DEV]',
    stag: '[STAG]',
    prod: '',
  );
}
