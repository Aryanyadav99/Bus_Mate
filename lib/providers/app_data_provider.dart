import 'package:bus_reservation_flutter_starter/datasource/app_datasource_class.dart';
import 'package:bus_reservation_flutter_starter/datasource/data_source.dart';
import 'package:bus_reservation_flutter_starter/models/bus_schedule.dart';
import 'package:bus_reservation_flutter_starter/models/bus_route.dart';
import 'package:bus_reservation_flutter_starter/models/reservation_expansion_item.dart';
import 'package:bus_reservation_flutter_starter/models/response_model.dart';
import 'package:flutter/material.dart';
import '../models/app_user.dart';
import '../models/auth_response_model.dart';
import '../models/bus_model.dart';
import '../models/bus_reservation.dart';
import '../utils/helper_functions.dart';


class AppDataProvider extends ChangeNotifier {
  List<Bus> _busList = [];
  List<BusRoute> _routeList = [];
  List<BusReservation> _reservationList = [];
  List<BusSchedule> _scheduleList = [];

  List<BusSchedule> get scheduleList => _scheduleList;

  List<Bus> get busList => _busList;

  List<BusRoute> get routeList => _routeList;

  List<BusReservation> get reservationList => _reservationList;
  final DataSource _dataSource = AppDataSource();


  Future<BusRoute?> getRouteByCityFromAndCityTo(String cityFrom,
      String cityTo) {
    return _dataSource.getRouteByCityFromAndCityTo(cityFrom, cityTo);
  }

  Future<ResponseModel> addReservation(BusReservation reservation) {
    return _dataSource.addReservation(reservation);
  }

  Future<AuthResponseModel?> login(AppUser user) async {
    final response = await _dataSource.login(user);
    if(response == null) return null;
    await saveToken(response.accessToken);
    await saveLoginTime(response.loginTime);
    await saveExpirationDuration(response.expirationDuration);
    return response;
  }

  Future<List<BusSchedule>> getScheduleByRouteName(String routeName) async {
    return _dataSource.getSchedulesByRouteName(routeName);
  }

  Future<List<BusReservation>> getReservationsByScheduleAndDepartureDate(
      int scheduleId, String departureDate) {
    return _dataSource.getReservationsByScheduleAndDepartureDate(
        scheduleId, departureDate);
  }


  Future<List<BusReservation>> getAllReservations() async{
    _reservationList=await _dataSource.getAllReservation();
    notifyListeners();
    return _reservationList;
  }


  Future<List<BusReservation>> getReservationByMobile(String mobile){
    return _dataSource.getReservationsByMobile(mobile);
  }


  Future<ResponseModel>addBus(Bus bus){
    return _dataSource.addBus(bus);
  }


  Future<ResponseModel>addRoute(BusRoute route){
    return _dataSource.addRoute(route);
  }

  Future<ResponseModel> addSchedule(BusSchedule schedule){
    return _dataSource.addSchedule(schedule);
  }

  Future<void> getAllBus() async{
    _busList=await _dataSource.getAllBus();
    notifyListeners();
  }

  Future<void> getAllRoutes() async{
    _routeList=await _dataSource.getAllRoutes();
    notifyListeners();
  }

  List<ReservationExpansionItem> getExpansionItems(List<BusReservation> reservationList) {
    return List.generate(reservationList.length, (index) {
      final reservation = reservationList[index];
      return ReservationExpansionItem(
        header: ReservationExpansionHeader(
          reservationId: reservation.reservationId,
          departureDate: reservation.departureDate,
          schedule: reservation.busSchedule,
          timestamp: reservation.timestamp,
          reservationStatus: reservation.reservationStatus,
        ),
        body: ReservationExpansionBody(
          customer: reservation.customer,
          totalSeatedBooked: reservation.totalSeatBooked,
          seatNumbers: reservation.seatNumbers,
          totalPrice: reservation.totalPrice,
        ),
      );
    });
  }
}