import 'dart:convert';

import 'package:visit_ethiopia/models/tour_site.dart';
import 'package:http/http.dart' as http;

class TourService {
  List<TourSite> tours = [];

  Future createTourSite(TourSite site) async {
    try{
       final response = await http.post(Uri.parse('your_api_endpoint_url'), body: site);
       return response.body;
    }catch(e){
      throw('error occured');
    }
  }

  Future updateTourSite(TourSite site) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }

  Future<List<TourSite>> getTourSites() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }

  Future deleteTour() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }

  Future likeTour() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }

  Future createHotels(TourSite site) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }

  Future updateHotels(TourSite site) async {
    await Future.delayed(const Duration(milliseconds: 1000));
    return [];
  }
}
