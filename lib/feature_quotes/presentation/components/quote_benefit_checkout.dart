import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuoteBenefitCheckout extends StatelessWidget {
  const QuoteBenefitCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Theme.of(context).primaryColor, width: 3),
          color: Theme.of(context).primaryColorDark),
      child: Column(
        children: [
          //  header
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Premium Summary',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            Theme.of(context).textTheme.titleSmall!.fontWeight,
                        color: Theme.of(context).textTheme.titleSmall!.color)),
                //  info
                SvgPicture.asset('assets/images/info.svg',
                    width: 24, height: 24)
              ],
            ),
          ),

          //  total
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 1, color: Colors.grey.withOpacity(0.3)),
                    bottom: BorderSide(
                        width: 1, color: Colors.grey.withOpacity(0.3)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Total',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight:
                            Theme.of(context).textTheme.bodyMedium!.fontWeight,
                        color: Theme.of(context).textTheme.bodyMedium!.color)),
                Text('KES 131,435',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight:
                            Theme.of(context).textTheme.titleMedium!.fontWeight,
                        color: Theme.of(context).textTheme.titleMedium!.color)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
