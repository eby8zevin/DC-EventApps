import 'package:event_app/core/env/env_config.dart';

class FlavorSettings {
  FlavorSettings.development() {
    EnvConfig.getInstance(
      apiBaseUrl: 'https://api.development.com/',
      flavorName: 'Development',
    );
  }

  FlavorSettings.staging() {
    EnvConfig.getInstance(
      apiBaseUrl: 'https://api.staging.com/',
      flavorName: 'Staging',
    );
  }

  FlavorSettings.production() {
    EnvConfig.getInstance(
      apiBaseUrl: 'https://api.production.com/',
      flavorName: 'Production',
    );
  }
}