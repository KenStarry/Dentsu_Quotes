import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

class LeadActions extends StatelessWidget {
  final VoidCallback onCancelLead;
  final VoidCallback onNext;

  const LeadActions(
      {super.key, required this.onCancelLead, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  cancel lead
          OutlinedButton(
              onPressed: onCancelLead,
              style: OutlinedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColorDark,
                  surfaceTintColor: Theme.of(context).primaryColorDark,
                  side: BorderSide(
                      color: Theme.of(context).primaryColorLight, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.close_rounded,
                      color: Theme.of(context).primaryColorLight),
                  const SizedBox(width: 8),
                  Text(
                    'Cancel lead',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).primaryColorLight),
                  )
                ],
              )),

          const SizedBox(width: 24),

          Expanded(
            child: GestureDetector(
              onTap: onNext,
              child: Container(
                padding:
                    const EdgeInsets.only(right: 8, top: 8, bottom: 8, left: 16),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorLight,
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                          fontWeight: FontWeight.w400,
                          color: textWhite900),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right_rounded, color: textWhite900)
                  ],
                ),
              ),
            ),
          ),
          //  next
          // FilledButton(
          //     onPressed: onNext,
          //     style: FilledButton.styleFrom(
          //       backgroundColor: Theme.of(context).primaryColorLight,
          //       surfaceTintColor: Theme.of(context).primaryColorLight,
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text(
          //           'Next',
          //           style: TextStyle(
          //               fontSize:
          //                   Theme.of(context).textTheme.bodyLarge!.fontSize,
          //               fontWeight: FontWeight.w400,
          //               color: textWhite900),
          //         ),
          //       ],
          //     ))
        ],
      ),
    );
  }
}
