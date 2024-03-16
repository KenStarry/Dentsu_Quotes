import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutPaymentRow extends StatelessWidget {
  final String title;
  final String assetSvg;
  final Function(String? value) onChanged;

  const CheckoutPaymentRow(
      {super.key,
      required this.title,
      required this.assetSvg,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: -4),
      leading: Radio(
          value: '',
          groupValue: '',
          onChanged: onChanged,
          activeColor: Theme.of(context).primaryColorLight,
          visualDensity: VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
      title: Text(title,
          style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: FontWeight.w700,
              color: Theme.of(context).textTheme.bodyMedium!.color),
          overflow: TextOverflow.ellipsis),
      contentPadding: EdgeInsets.zero,
      trailing: title == 'M-PESA PayBill'
          ? Image.asset(assetSvg, width: 80, height: 80)
          : SvgPicture.asset(assetSvg, width: 24, height: 24),
    );
  }
}
