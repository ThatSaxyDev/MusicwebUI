import 'package:flutter/material.dart';
import 'package:prac/utils/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.15,
      padding: const EdgeInsets.all(10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: bgColor,
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              color: Colors.pink,
            ),
          ),
          hintStyle: const TextStyle(fontSize: 14),
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
