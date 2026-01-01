import 'package:flutter/material.dart';
import 'package:flutter_trip_app_ui/home_screen.dart';

class TripApp extends StatefulWidget {
  const TripApp({super.key});

  @override
  State<TripApp> createState() => _TripAppState();
}

class _TripAppState extends State<TripApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito'
      ),
      home: HomeScreen(),
    );
  }
}
