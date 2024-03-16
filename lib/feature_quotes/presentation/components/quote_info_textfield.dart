import 'package:flutter/material.dart';

class QuoteInfoTextField extends StatelessWidget {
  final String header;
  final TextEditingController controller;
  final String hintText;

  const QuoteInfoTextField(
      {super.key,
      required this.header,
      required this.controller,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
              color: Theme.of(context).textTheme.bodyMedium!.color),
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
        )
      ],
    );
  }
}
