import 'package:bus_reservation_flutter_starter/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class BusSearchPage extends StatefulWidget {
  const BusSearchPage({super.key});

  @override
  _BusSearchPageState createState() {
    return _BusSearchPageState();
  }
}

class _BusSearchPageState extends State<BusSearchPage> {
  String? fromCity, toCity;
  DateTime? departureDate;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: Text('Search Bus',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
        backgroundColor: const Color(0xFF1F1F1F),
        centerTitle: true,
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                Text('Choose Your Operator',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(height: 10),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: const Color(0xFF1E1E1E),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          value: fromCity,
                          dropdownColor: const Color(0xFF2C2C2C),
                          validator: (value) =>
                          value == null ? emptyFieldErrMessage : null,
                          decoration: _inputDecoration('From'),
                          hint: Text("From", style: GoogleFonts.poppins(color: Colors.white)),
                          isExpanded: true,
                          items: cities
                              .map((city) => DropdownMenuItem<String>(
                            value: city,
                            child: Text(city,
                                style: GoogleFonts.poppins(
                                    color: Colors.white)),
                          ))
                              .toList(),
                          onChanged: (value) => setState(() => fromCity = value),
                        ),
                        const SizedBox(height: 30),
                        DropdownButtonFormField<String>(
                          value: toCity,
                          dropdownColor: const Color(0xFF2C2C2C),
                          validator: (value) =>
                          value == null ? emptyFieldErrMessage : null,
                          decoration: _inputDecoration('To'),
                          hint: Text("To", style: GoogleFonts.poppins(color: Colors.white)),
                          isExpanded: true,
                          items: cities
                              .map((city) => DropdownMenuItem<String>(
                            value: city,
                            child: Text(city,
                                style: GoogleFonts.poppins(
                                    color: Colors.white)),
                          ))
                              .toList(),
                          onChanged: (value) => setState(() => toCity = value),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Icon(Icons.date_range, color: Colors.white70),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: _selectDate,
                              child: Text(
                                departureDate == null
                                    ? 'Select Departure Date'
                                    : getFormattedDate(departureDate!),
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _search,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green[700],
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                            ),
                            child: Text("Search",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.white)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: GoogleFonts.poppins(color: Colors.white70),
      filled: true,
      fillColor: const Color(0xFF2C2C2C),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white24),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white54),
      ),
      errorStyle: const TextStyle(color: Colors.redAccent),
    );
  }

  void _selectDate() async {
    final selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7)),
      builder: (context, child) {
        return Theme(
          data: ThemeData.dark(),
          child: child!,
        );
      },
    );

    if (selected != null) {
      setState(() => departureDate = selected);
    }
  }

  void _search() {
    if (departureDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select a departure date')));
      return;
    }
    if (_formKey.currentState!.validate()) {
      // Proceed to search logic
    }
  }
}