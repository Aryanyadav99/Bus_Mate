import 'package:bus_reservation_flutter_starter/customwidgets/reservation_item_body_view.dart';
import 'package:bus_reservation_flutter_starter/customwidgets/reservation_item_header_view.dart';
import 'package:bus_reservation_flutter_starter/customwidgets/search_box_widget.dart';
import 'package:bus_reservation_flutter_starter/models/reservation_expansion_item.dart';
import 'package:bus_reservation_flutter_starter/providers/app_data_provider.dart';
import 'package:bus_reservation_flutter_starter/utils/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  bool isFirst=true;
  List<ReservationExpansionItem> items=[];
  @override
  void didChangeDependencies(){
    if(isFirst){
      _getData();
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
_getData() async{
    final reservations=await Provider.of<AppDataProvider>(context,listen:false).getAllReservations();
    items=Provider.of<AppDataProvider>(context,listen:false).getExpansionItems(reservations);
    setState(() {

    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //search section
            SearchBox(onSubmit: (value){
              //find the reservation of cutomer having particular phone number
              _search(value);

            }),
            ExpansionPanelList(
              expansionCallback: (index,isExpanded){
                setState(() {
                  items[index].isExpanded=!isExpanded;
                });
              },
              children: items.map((item)=>ExpansionPanel(
                isExpanded: item.isExpanded,
                headerBuilder: (context,isExpanded)=> ReservationItemHeaderView(header: item.header),
                body:ReservationItemBodyView(body: item.body,),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }

  void _search(String value) async{
    final data=await Provider.of<AppDataProvider>(context,listen: false).getReservationByMobile(value);
    if(data.isEmpty){
      showMsg(context, 'No Record Found');
      return;
    }
    setState(() {
      items = Provider.of<AppDataProvider>(context,listen: false).getExpansionItems(data);
    });
  }
}
