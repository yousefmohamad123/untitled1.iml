import 'package:dio/dio.dart';
import 'package:untitled1/Model/prayer_time_modil.dart';

class prayertiemservice{
  static Dio dio =new Dio();
      static Future<prayerTiem> getprayerTiem() async{
    try{
       var url="http://api.aladhan.com/v1/timingsByCity?country=egypt&city=cairo";
       var respose=await dio.get(url);
       if(respose.statusCode == 200){
         return prayerTiem.fromjeson(respose.data);
       }
       else{
         throw Exception("Can't load data");
       }
    }
    catch(e){
          throw Exception(e.toString());
       }
}
}