class TourSite {
  String name;
  String description;
  List<String> cities = [];
  List<String> images = [];
  String thumbnailImage;

  TourSite({required this.name, required this.description, required this.images, required this.cities, required this.thumbnailImage});
}