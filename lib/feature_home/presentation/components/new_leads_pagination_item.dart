import 'package:dentsu_quotes/feature_home/presentation/components/pagination_item.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewLeadsPaginationItem extends StatelessWidget {

  final VoidCallback? onPrev;
  final VoidCallback? onNext;
  final Function(int numIndex)? onNumberIndexClicked;

  const NewLeadsPaginationItem({super.key, this.onPrev, this.onNext, this.onNumberIndexClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Theme.of(context).primaryColorDark,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  prev
          PaginationItem(
              center: Icon(Icons.chevron_left_rounded, color: textBlack700),
              onTap: onPrev),

          const SizedBox(width: 12),

          //  number line
          Container(
            decoration: BoxDecoration(
              border:
                  Border.all(color: textBlack100.withOpacity(0.3), width: 1),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(100),
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
            ),
            child: Row(
              children: List.generate(
                  5,
                  (index) => PaginationItem(
                        center: Text('${index + 1}',
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontWeight: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontWeight,
                                color: index == 0
                                    ? textWhite900
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .color)),
                        showBorder: false,
                        active: index == 0,
                        onTap: () => onNumberIndexClicked!(index),
                      )),
            ),
          ),

          const SizedBox(width: 12),

          //  next
          PaginationItem(
              center: Icon(Icons.chevron_right_rounded, color: textBlack700),
              onTap: onNext),
        ],
      ),
    );
  }
}
