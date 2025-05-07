import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getFormattedDate(DateTime dt,{String pattern='dd/MM/yyyy'}){
  return DateFormat(pattern).format(dt);
}
void showMsg(BuildContext context,String msg){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)));
}