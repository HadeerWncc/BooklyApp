import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
