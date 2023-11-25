import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {},
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 20),
        prefixIcon: const Icon(Icons.search_outlined),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
        ),
        hintText: "Type to search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.highlight_remove),
        ),
      ),
    );
  }
}
