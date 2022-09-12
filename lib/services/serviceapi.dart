import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:otp/Model/DoctorCardmodel.dart';
import 'package:otp/Model/demomodel.dart';
import 'package:otp/Model/doctormodel.dart';

import '../Model/ambulancemodel.dart';

class ServiceApi {
  Future<List<DoctorcardModel>?> getdoctorcard() async {
    final response = await http.get(Uri.parse(
        'https://otpproject-8046d-default-rtdb.asia-southeast1.firebasedatabase.app/doctorcard.json'));
    final data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      var users = data.map((e) => DoctorcardModel.fromJson(e)).toList();
      log('Successfully Shown Profile');
      return users;
    } else {
      log('Failed to Getdata.');
    }
  }

  Future<List<DoctorModel>?> getdoctors() async {
    final response = await http.get(Uri.parse(
        'https://otpproject-8046d-default-rtdb.asia-southeast1.firebasedatabase.app/doctors.json'));
    final data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      var users = data.map((e) => DoctorModel.fromJson(e)).toList();
      log('Successfully Shown Profile');
      return users;
    } else {
      log('Failed to Getdata.');
      return null;
    }
  }

  Future<List<AmbulanceModel>?> getambulance() async {
    final response = await http.get(Uri.parse(
        'https://otpproject-8046d-default-rtdb.asia-southeast1.firebasedatabase.app/ambulance.json'));
    final data = jsonDecode(response.body) as List;
    if (response.statusCode == 200) {
      var users = data.map((e) => AmbulanceModel.fromJson(e)).toList();
      log('Successfully Shown Profile');
      return users;
    } else {
      log('Failed to Getdata.');
      return null;
    }
  }
}
