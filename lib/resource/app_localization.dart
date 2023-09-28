class LocalizationMap {
  static Map<String, String> get codesEN => {
    "":"",
  };

  static String getValue(String key) {
    return codesEN[key] ?? "Text not found";
  }
}
