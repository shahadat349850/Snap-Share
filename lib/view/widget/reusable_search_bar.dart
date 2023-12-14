import 'package:flutter/material.dart';

class ReusableSearchBar extends StatelessWidget {
  const ReusableSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController searchEditingController =TextEditingController();

    return TextFormField(
      controller: searchEditingController,
      keyboardType: TextInputType.text,
      style: const TextStyle(fontSize: 15),
      decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
          ),
          fillColor: Colors.grey.shade300,
          hintText: 'Search',
          border: const OutlineInputBorder(
              borderSide:
              BorderSide(width: 2, color: Color(0xFFD0D5DD)),
              borderRadius:
              BorderRadius.all(Radius.circular(20))),
          enabledBorder: const OutlineInputBorder(
            borderSide:
            BorderSide(width: 2, color: Color(0xFFD0D5DD)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
            BorderSide(width: 2, color: Color(0xFFD0D5DD)),
          )),
    );
  }
}