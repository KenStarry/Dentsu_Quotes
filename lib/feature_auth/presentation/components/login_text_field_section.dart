import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginTextFieldSection extends StatelessWidget {
  final TextEditingController controller;
  final String sectionTitle;
  final String hintText;

  const LoginTextFieldSection(
      {super.key,
      required this.controller,
      required this.sectionTitle,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
              fontWeight: Theme.of(context).textTheme.titleSmall!.fontWeight,
              color: textWhite700),
        ),

        const SizedBox(height: 16),

        //  textfield
        TextFormField(
          controller: controller,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
            fontWeight: Theme.of(context).textTheme.bodyLarge!.fontWeight,
            color: Theme.of(context).textTheme.bodyLarge!.color,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Theme.of(context).primaryColorDark,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(12))
            )
          ),
        )
      ],
    );
  }
}
