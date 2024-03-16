import 'package:dentsu_quotes/theme/colors.dart';
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
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.8), width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
          )
        ],
      ),
    );
  }
}
