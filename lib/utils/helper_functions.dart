import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getFormattedDate(DateTime dt,{String pattern='dd/MM/yyyy'}){
  return DateFormat(pattern).format(dt);
}
String getFormattedTime(TimeOfDay tm, {String pattern = 'HH:mm'}) {
  return DateFormat(pattern).format(DateTime(0,0,0,tm.hour,tm.minute));
}
void showMsg(BuildContext context,String msg){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)));
}
int getGrandTotal(int discount,int totalSeatBooked,int price,int fee){
  final subTotal=totalSeatBooked*price;
  final priceAfterDiscount=subTotal-((subTotal*discount)/100);
  return (priceAfterDiscount+fee).toInt();
}