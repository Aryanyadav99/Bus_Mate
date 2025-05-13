import 'package:bus_reservation_flutter_starter/pages/add_bus_page.dart';
import 'package:bus_reservation_flutter_starter/pages/add_route_page.dart';
import 'package:bus_reservation_flutter_starter/pages/add_schedule_page.dart';
import 'package:bus_reservation_flutter_starter/pages/booking_confirmation_page.dart';
import 'package:bus_reservation_flutter_starter/pages/bus_search_page.dart';
import 'package:bus_reservation_flutter_starter/pages/login_page.dart';
import 'package:bus_reservation_flutter_starter/pages/reservation_page.dart';
import 'package:bus_reservation_flutter_starter/pages/search_result_page.dart';
import 'package:bus_reservation_flutter_starter/pages/seat_plan_page.dart';
import 'package:bus_reservation_flutter_starter/providers/app_data_provider.dart';
import 'package:bus_reservation_flutter_starter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {

    runApp(
      ChangeNotifierProvider(
        create: (context) => AppDataProvider(), // Replace with your actual ChangeNotifier
        child: const MyApp(),
      ),
    );
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor:  const Color(0xDB191919),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[900],
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardColor: Colors.grey[900],
        iconTheme: IconThemeData(color: Colors.white70),
        textTheme: Typography.whiteCupertino, // Or use ThemeData.dark().textTheme
      ),
      initialRoute:routeNameHome,
      routes: {
        routeNameHome:(context) => const BusSearchPage(),
        routeNameSearchResultPage:(context)=>const SearchResultPage(),
        routeNameSeatPlanPage:(context)=>const SeatPlanPage(),
        routeNameBookingConfirmationPage:(context)=>const BookingConfirmationPage(),
        routeNameAddBusPage : (context) => const AddBusPage(),
        routeNameAddRoutePage : (context) => const AddRoutePage(),
        routeNameAddSchedulePage : (context) => const AddSchedulePage(),
        routeNameReservationPage : (context) => const ReservationPage(),
        routeNameLoginPage : (context) => const LoginPage(),
      },
    );
  }
}


