import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

class LeadStatus extends StatelessWidget {
  const LeadStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lead Status',
              style: TextStyle(
                fontSize: 18,
                fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
                color: Theme.of(context).textTheme.bodyMedium!.color,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 24, top: 8, bottom: 8, left: 8),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [myGreen, Theme.of(context).primaryColorLight]),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColorLight
                    ),
                    child: Center(
                      child: Icon(Icons.done_rounded, color: textWhite900, size: 16,),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text('Contacted',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyMedium!.fontSize,
                        fontWeight: FontWeight.w400,
                        color: textWhite900,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
