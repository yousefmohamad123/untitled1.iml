class prayerTiem{
   Map<String,dynamic>data;
   prayerTiem({required this.data});
  factory prayerTiem.fromjeson(Map<String,dynamic>jeson){
     return prayerTiem(data:jeson["data"]["timings"]);
   }
}
