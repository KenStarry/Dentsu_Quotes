import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_benefit_card.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_benefit_checkout.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/domain/model/quote.dart';
import '../../../theme/colors.dart';

class ViewQuoteBenefits extends StatefulWidget {
  final Quote? quote;
  final List<TextEditingController> controllers;
  final bool isNewQuote;
  final VoidCallback onSave;
  final VoidCallback onDiscard;

  const ViewQuoteBenefits(
      {super.key,
      required this.quote,
      required this.controllers,
      required this.isNewQuote,
      required this.onSave,
      required this.onDiscard});

  @override
  State<ViewQuoteBenefits> createState() => _ViewQuoteBenefitsState();
}

class _ViewQuoteBenefitsState extends State<ViewQuoteBenefits> {
  late final CoreController _coreController;
  late final Map<String, dynamic> information;
  late final List<String> _benefits;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    information = <String, dynamic>{
      'Inpatient Cover Limit':
          (widget.isNewQuote && widget.controllers[0].text.isEmpty) ||
                  widget.quote == null
              ? 'Inpatient Cover Limit'
              : widget.quote!.inPatientCoverLimit,
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
                    controller: !widget.isNewQuote
                        ? null
                        : widget.controllers[
                            information.keys.toList().indexOf(entry.key)],
                    hintText: entry.value,
                    initialValue: widget.isNewQuote ? null : entry.value,
                    isDropdown: true,
                    dropdownItems: entry.key == 'Inpatient Cover Limit'
                        ? [
                            'KES 10,000',
                            'KES 30,000',
                            'KES 50,000',
                            'KES 100,000',
                            'KES 500,000',
                            'Above KES 500,000'
                          ]
                        : null,
                    readOnly: !widget.isNewQuote))
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
                  itemBuilder: (context, index) => Obx(
                    () {
                      final newQuoteContainsBenefit = _coreController
                          .newQuote.value.benefits
                          .contains(_benefits[index]);
                      return QuoteBenefitCard(
                          title: _benefits[index],
                          onChanged: widget.isNewQuote
                              ? (value) {
                                  final List<String> currentBenefits = [
                                    ..._coreController.newQuote.value.benefits
                                  ];

                                  //  toggle current benefits
                                  currentBenefits.contains(_benefits[index])
                                      ? currentBenefits.removeWhere((benefit) =>
                                          benefit == _benefits[index])
                                      : currentBenefits.add(_benefits[index]);

                                  final newQuote = _coreController
                                      .newQuote.value
                                      .copyWith(benefits: currentBenefits);
                                  _coreController.updateQuoteValue(
                                      updatedQuote: newQuote);
                                }
                              : null,
                          isSelected: widget.isNewQuote || widget.quote == null
                              ? newQuoteContainsBenefit
                              : widget.quote!.benefits
                                  .contains(_benefits[index]));
                    },
                  ),
                  separatorBuilder: (context, index) => Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.grey.withOpacity(0.3)),
                  itemCount: _benefits.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                )
              ],
            ),
          ),

          const SizedBox(height: 24),

          //  Premium checkout
          widget.isNewQuote
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //  cancel lead
                    OutlinedButton(
                        onPressed: widget.onSave,
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColorDark,
                            surfaceTintColor:
                                Theme.of(context).primaryColorDark,
                            side: BorderSide(
                                color: Theme.of(context).primaryColorLight,
                                width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.close_rounded,
                                color: Theme.of(context).primaryColorLight),
                            const SizedBox(width: 8),
                            Text(
                              'Discard',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).primaryColorLight),
                            )
                          ],
                        )),

                    const SizedBox(width: 24),

                    Expanded(
                      child: GestureDetector(
                        onTap: widget.onSave,
                        child: Container(
                          padding: const EdgeInsets.only(
                              right: 8, top: 8, bottom: 8, left: 16),
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColorLight,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.done_rounded,
                                  color: textWhite900),
                              const SizedBox(width: 8),
                              Text(
                                'Save Quote',
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .fontSize,
                                    fontWeight: FontWeight.w400,
                                    color: textWhite900),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : const QuoteBenefitCheckout()
        ],
      ),
    );
  }
}
