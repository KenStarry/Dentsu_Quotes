import 'package:dentsu_quotes/feature_quotes/presentation/components/checkout_payment_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuoteBenefitCheckout extends StatefulWidget {
  const QuoteBenefitCheckout({super.key});

  @override
  State<QuoteBenefitCheckout> createState() => _QuoteBenefitCheckoutState();
}

class _QuoteBenefitCheckoutState extends State<QuoteBenefitCheckout> {
  late final Map<String, dynamic> _paymentMethods;

  @override
  void initState() {
    super.initState();

    _paymentMethods = <String, dynamic>{
      'M-PESA PayBill': 'assets/images/mpesa.png',
      'Credit / Debit Card': 'assets/images/visa.svg',
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border:
              Border.all(color: Theme.of(context).primaryColorLight, width: 3),
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
          ),

          const SizedBox(height: 24),

          //  payment methods
          Column(
            children: _paymentMethods.entries
                .map((entry) => CheckoutPaymentRow(
                    title: entry.key,
                    assetSvg: entry.value,
                    onChanged: (value) {}))
                .toList(),
          ),

          const SizedBox(height: 32),

          GestureDetector(
            onTap: () {},
            child: UnconstrainedBox(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).primaryColorLight, width: 1),
                ),
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.bodyMedium!.fontWeight,
                      color: Theme.of(context).primaryColorLight),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
