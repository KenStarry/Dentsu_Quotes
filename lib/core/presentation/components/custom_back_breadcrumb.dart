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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  back button
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: onBackPressed,
              child: Row(
                children: [
                  Icon(Icons.arrow_back_rounded,
                      color: Theme.of(context).primaryColorLight),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(backText,
                        style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge!.fontSize,
                            fontWeight: FontWeight.w400,
                            color: Theme.of(context).primaryColorLight),
                        overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('/', style: Theme.of(context).textTheme.bodyLarge),
          ),

          //  current position text
          Expanded(
            flex: 3,
            child: Text(
              currentPositionText ?? 'Quote',
              style: Theme.of(context).textTheme.bodyLarge,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
