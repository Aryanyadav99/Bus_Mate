import 'package:intl/intl.dart';

String getFormattedDate(DateTime dt,{String pattern='dd/MM/yyyy'}){
  return DateFormat(pattern).format(dt);
}