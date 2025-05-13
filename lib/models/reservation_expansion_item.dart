import 'package:bus_reservation_flutter_starter/models/bus_reservation.dart';
import 'package:bus_reservation_flutter_starter/models/bus_schedule.dart';
import 'package:bus_reservation_flutter_starter/models/customer.dart';

class ReservationExpansionItem {
  ReservationExpansionBody body;
  ReservationExpansionHeader header;
  bool isExpanded;

  ReservationExpansionItem({
    required this.header,
    required this.body,
     this.isExpanded= false,
  });
}

class ReservationExpansionHeader {
  int? reservationId;
  String departureDate;
  BusSchedule schedule;
  int timestamp;
  String reservationStatus;

  ReservationExpansionHeader({
    required this.reservationId,
    required this.departureDate,
    required this.schedule,
    required this.timestamp,
    required this.reservationStatus,
  });
}

class ReservationExpansionBody {
  Customer customer;
  int totalSeatBooked;
  String seatNumbers;
  int totalPrice;

  ReservationExpansionBody({
    required this.customer,
    required this.totalSeatBooked,
    required this.seatNumbers,
    required this.totalPrice,
  });
}
