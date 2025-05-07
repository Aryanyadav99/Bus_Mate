import 'package:bus_reservation_flutter_starter/models/bus_schedule.dart';
import 'package:bus_reservation_flutter_starter/models/but_route.dart';
import 'package:bus_reservation_flutter_starter/providers/app_data_provider.dart';
import 'package:bus_reservation_flutter_starter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final argList = ModalRoute.of(context)!.settings.arguments as List;
    final BusRoute route = argList[0];
    final String departureDate = argList[1];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text("Search Results", style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            "Showing results for ${route.cityFrom} to ${route.cityTo} on $departureDate",
            style: const TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Consumer<AppDataProvider>(
            builder: (context, provider, _) => FutureBuilder<List<BusSchedule>>(
              future: provider.getScheduleByRouteName(route.routeName),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final scheduleList = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: scheduleList
                        .map((schedule) => ScheduleItemView(schedule: schedule, date: departureDate))
                        .toList(),
                  );
                }
                if (snapshot.hasError) {
                  return const Text('Failed to fetch data', style: TextStyle(color: Colors.redAccent));
                }
                return const Text('Please wait...', style: TextStyle(color: Colors.white));
              },
            ),
          )
        ],
      ),
    );
  }
}

class ScheduleItemView extends StatelessWidget {
  final String date;
  final BusSchedule schedule;
  const ScheduleItemView({Key? key, required this.schedule, required this.date});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        Navigator.pushNamed(context, routeNameSeatPlanPage,arguments:[schedule,date] );
      },
      child: Card(
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(schedule.bus.busName, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                subtitle: Text(schedule.bus.busType, style: const TextStyle(color: Colors.grey)),
                trailing: Text('$currency${schedule.ticketPrice}',
                    style: const TextStyle(color: Colors.greenAccent, fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const Divider(color: Colors.grey),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('From: ${schedule.busRoute.cityFrom}', style: const TextStyle(color: Colors.white70, fontSize: 16)),
                    Text('To: ${schedule.busRoute.cityTo}', style: const TextStyle(color: Colors.white70, fontSize: 16)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Departure: ${schedule.departureTime}', style: const TextStyle(color: Colors.white70, fontSize: 16)),
                    Text('Seats: ${schedule.bus.totalSeat}', style: const TextStyle(color: Colors.white70, fontSize: 16)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
