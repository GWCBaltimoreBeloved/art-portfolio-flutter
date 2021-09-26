// ignore_for_file: constant_identifier_names

enum Flavor {
  DEV,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'dev Art Portfolio';
      case Flavor.PROD:
        return 'Art Portfolio';
      default:
        return 'title';
    }
  }
}
