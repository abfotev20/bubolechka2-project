import '../models/bubo_category.dart';
///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "KarinBenzema", "KarinBenzema", "KarinBenzema", "KarinBenzema"],
  ["2", "LukaModric", "LukaModric", "LukaModric", "LukaModric"],
  ["3", "Marcelo", "Marcelo", "Marcelo", "Marcelo"],
  ["4", "SergioRamos", "SergioRamos", "SergioRamos", "SergioRamos"],
  ["5", "Casemiro", "Casemiro", "Casemiro", "Casemiro"],
  ["6", "TonyKroos", "TonyKroos", "TonyKroos", "TonyKroos"],
  ["7", "MarcosLlorente", "MarcosLlorente", "MarcosLlorente", "MarcosLlorente"],
  ["8", "Courtois", "Courtois", "Courtois", "Courtois"],
  ["9", "Navas", "Navas", "Navas", "Navas"],
  ["10", "DaniCarvajal", "DaniCarvajal", "DaniCarvajal", "DaniCarvajal"],
  ["11", "GarethBale", "GarethBale", "GarethBale", "GarethBale"],
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/player_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2]
      });
}).toList();