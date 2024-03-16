import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_benefit_card.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

class ViewQuoteBenefits extends StatefulWidget {
  const ViewQuoteBenefits({super.key});

  @override
  State<ViewQuoteBenefits> createState() => _ViewQuoteBenefitsState();
}

class _ViewQuoteBenefitsState extends State<ViewQuoteBenefits> {
  late final TextEditingController _inPatientCoverController;
  late final Map<String, dynamic> information;
  late final List<TextEditingController> controllers;
  late final List<String> _benefits;

  @override
  void initState() {
    super.initState();

    _inPatientCoverController = TextEditingController();

    controllers = <TextEditingController>[
      _inPatientCoverController,
    ];

    information = <String, dynamic>{
      'Inpatient Cover Limit': 'KES 1,000,000',
    };

    _benefits = <String>[
      'Inpatient',
      'Outpatient',
      'No Co-payment',
      'Dental',
      'Optical',
      'Maternity',
      'Last Expense',
      'Personal Accident',
      'Enhanced Covid 19 Cover',
      'Amref Evacuation'
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        children: [
          Column(
            children: information.entries
                .map((entry) => QuoteInfoTextField(
                    header: entry.key,
                    controller: controllers[
                        information.keys.toList().indexOf(entry.key)],
                    hintText: entry.value,
                    readOnly: true))
                .toList(),
          ),

          //  Benefits
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border:
                    Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                color: Theme.of(context).primaryColorDark),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Benefits',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.bodyLarge!.fontSize,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).textTheme.titleSmall!.color)),

                const SizedBox(height: 24),

                //  benefits list
                ListView.separated(
                  itemBuilder: (context, index) => QuoteBenefitCard(
                      title: _benefits[index],
                      onChanged: (value) {},
                      isSelected: true),
                  separatorBuilder: (context, index) => Divider(height: 2, color: Colors.grey.withOpacity(0.4)),
                  itemCount: _benefits.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
