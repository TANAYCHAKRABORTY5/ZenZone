
import 'package:doctor_app1/components/doctor_card.dart';
import 'package:doctor_app1/main_layout.dart';
import 'package:doctor_app1/screens/booking_page.dart';
import 'package:doctor_app1/screens/doctor_details.dart';
import 'package:doctor_app1/screens/success_booked.dart';
import 'package:doctor_app1/utils/config.dart';
import 'package:flutter/material.dart';


import 'screens/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doc_details':(context) => const DoctorDetail(),
        'booking_page':(context) => const BookingPage(),
        'success_booking': (context) => const AppointmentBooked(),

      },
    );
  }
}

