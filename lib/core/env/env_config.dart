// ignore_for_file: sort_constructors_first
class EnvConfig {
  final String? flavorName;
  final String? apiBaseUrl;
  EnvConfig({
    this.flavorName,
    this.apiBaseUrl,
  });

  static EnvConfig? _instance;
  static EnvConfig? getInstance({
    String? flavorName,
    String? apiBaseUrl,
  }) {
    if (_instance == null) {
      _instance = EnvConfig(
        apiBaseUrl: apiBaseUrl,
        flavorName: flavorName,
      );

      return _instance;
    } else {
      return _instance;
    }
  }
}