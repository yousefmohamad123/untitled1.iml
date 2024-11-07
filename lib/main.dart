import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/Screens/PrayerScreen.dart';
import 'package:untitled1/providers/prayer_times_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(create: (context) => prayertime(),
      child: PrayerScreen(),
      ),
    );
  }
}