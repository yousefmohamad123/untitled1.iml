import 'package:flutter/material.dart';
import 'package:untitled1/Model/prayer_time_modil.dart';
import 'package:untitled1/components/service/api_service.dart';


class prayertime extends ChangeNotifier {
  prayerTiem? PrayerTiem;

  Future<void> fetchprayemTime()async{
    PrayerTiem = await prayertiemservice.getprayerTiem();
    notifyListeners();
  }
}