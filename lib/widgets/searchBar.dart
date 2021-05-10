import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Color(0xffffffff),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 0.8, color: Color(0xffffffff)),
                borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.symmetric(vertical: 15),
            hintText: 'Search...',
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            suffixIcon: IconButton(icon: Icon(Icons.clear), onPressed: () {}),
            border: OutlineInputBorder(
                borderSide: BorderSide(width: 0, color: Colors.white),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
