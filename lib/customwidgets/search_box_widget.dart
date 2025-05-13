import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final Function(String) onSubmit;
  const SearchBox({super.key,required this.onSubmit});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _searchController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
            border:const OutlineInputBorder(
            ),
            labelText: 'Search Reservation',
            suffix: IconButton(
                onPressed: (){
                  if(_searchController.text.isEmpty) return;
                    widget.onSubmit(_searchController.text);
                },
                icon: Icon(Icons.search),)
        ),
      ),
    );
  }
}
