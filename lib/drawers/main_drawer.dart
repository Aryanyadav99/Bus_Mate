import 'package:flutter/material.dart';
import '../utils/constants.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF1C1C1E), // Greyish black modern UI
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF2C2C2E),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFF38383A),
                    child: Icon(Icons.directions_bus_rounded, size: 35, color: Colors.deepPurpleAccent),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Bus Admin Panel',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                children: [
                  _buildDrawerTile(
                    context,
                    icon: Icons.bus_alert_outlined,
                    title: 'Add Bus',
                    routeName: routeNameAddBusPage,
                  ),
                  _buildDrawerTile(
                    context,
                    icon: Icons.alt_route_rounded,
                    title: 'Add Route',
                    routeName: routeNameAddRoutePage,
                  ),
                  _buildDrawerTile(
                    context,
                    icon: Icons.schedule_rounded,
                    title: 'Add Schedule',
                    routeName: routeNameAddSchedulePage,
                  ),
                  _buildDrawerTile(
                    context,
                    icon: Icons.receipt_long_rounded,
                    title: 'View Reservations',
                    routeName: routeNameReservationPage,
                  ),
                  const Divider(color: Colors.white12, thickness: 0.8, height: 30),
                  _buildDrawerTile(
                    context,
                    icon: Icons.login_rounded,
                    title: 'Admin Login',
                    routeName: routeNameLoginPage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile _buildDrawerTile(
      BuildContext context, {
        required IconData icon,
        required String title,
        required String routeName,
      }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      leading: Icon(icon, color: Colors.deepPurpleAccent),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, routeName);
      },
      hoverColor: Colors.deepPurple.withOpacity(0.1),
      splashColor: Colors.deepPurple.withOpacity(0.2),
    );
  }
}
