extension CapExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
  String getFirstLetter(){
   final strings= split(' ');
   return strings[0][0]+strings[1][0];
  }

  String get inCaps => '${this[0].toUpperCase()}${substring(1)}';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstOfEach =>
      split(" ").map((str) => str.capitalize).join(" ");

}
