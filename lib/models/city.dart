import 'package:visit_ethiopia/models/Hotel.dart';

class City {
  String name;
  String description;
  String location;
  List<Hotel> hotels = [];
  List<String> images = [];
  String thumbnailImage;

  City({required this.name, required this.description, required this.location, required this.hotels, required this.images, required this.thumbnailImage});
}