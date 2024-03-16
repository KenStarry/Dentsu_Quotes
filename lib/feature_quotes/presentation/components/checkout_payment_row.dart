import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutPaymentRow extends StatelessWidget {
  final String title;
  final String assetSvg;

  const CheckoutPaymentRow(
      {super.key, required this.title, required this.assetSvg});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(value: '', groupValue: '', onChanged: (value) {}),
      title: Text(title,
          style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).textTheme.bodyMedium!.color)),
      trailing: SvgPicture.asset(assetSvg, width: 80, height: 50),
    );
  }
}
