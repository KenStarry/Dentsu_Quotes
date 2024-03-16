import 'package:flutter/material.dart';

class CustomBackBreadcrumb extends StatelessWidget {
  final String backText;
  final String? currentPositionText;
  final VoidCallback onBackPressed;

  const CustomBackBreadcrumb(
      {super.key,
      required this.backText,
      this.currentPositionText,
      required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      color: Colors.transparent,
      child: Row(
        children: [
          //  back button
          Row(
            children: [
              IconButton(
                  onPressed: onBackPressed,
                  icon: Icon(Icons.arrow_back_rounded,
                      color: Theme.of(context).primaryColor)),
              Text(backText,
                  style: TextStyle(
                      fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor))
            ],
          )
        ],
      ),
    );
  }
}
