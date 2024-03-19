import 'package:flutter/material.dart';

class SearchItemCard extends StatelessWidget {
  final int index;
  final String title;
  final VoidCallback onTap;

  const SearchItemCard(
      {super.key,
      required this.index,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        color: index % 2 == 0
            ? const Color(0xffFAF8F8)
            : Theme.of(context).primaryColorDark,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  index
            Text(index.toString(), style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(width: 24),
            Expanded(
                child:
                    Text(title, style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),
      ),
    );
  }
}
