import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage:
                      AssetImage("assets/images/icons/football-icon-png.png"),
                ),
              ),
              SizedBox(
                height: 45.h,
                width: 300.w,
                child: TextField(
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
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
        ],
      ),
    );
  }
}
