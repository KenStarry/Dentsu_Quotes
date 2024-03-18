import 'package:flutter/material.dart';

class ProfileContentCard extends StatelessWidget {

  final String title;
  final String count;

  const ProfileContentCard({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Theme.of(context).primaryColorDark
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(count, style: Theme.of(context).textTheme.titleMedium),
          Text(title, style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
            fontWeight: Theme.of(context).textTheme.titleMedium!.fontWeight,
            color: Theme.of(context).textTheme.titleMedium!.color,
          )),
        ],
      ),
    );
  }
}
