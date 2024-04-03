import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_goal/core/app_theme.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  TextEditingController textEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      controller: textEditingController,
      onSubmitted: (value) {},
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 20),
        prefixIcon:  Icon(
          size: 18.h,
          Icons.search_outlined,
          color: AppThemes.neutral400,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.w),

          borderSide: const BorderSide(color: AppThemes.teal500),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xff252528)),
          borderRadius: BorderRadius.circular(16.w),
        ),
        hintText: "Type to search",
        hintStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: const Color(0xff6f6e71), fontWeight: FontWeight.w900),
        suffixIcon: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            textEditingController.clear();
          },
          icon: const ImageIcon(
            size: 16,
            AssetImage(
              "assets/images/icons/close_icon.png",
            ),
          ),
        ),
      ),
    );
  }
}
