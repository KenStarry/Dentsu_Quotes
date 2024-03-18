import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/model/quote.dart';

class ViewQuoteSetup extends StatefulWidget {
  final Quote? quote;
  final List<TextEditingController> controllers;
  final bool isNewQuote;

  const ViewQuoteSetup(
      {super.key,
      required this.quote,
      required this.controllers,
      required this.isNewQuote});

  @override
  State<ViewQuoteSetup> createState() => _ViewQuoteSetupState();
}

class _ViewQuoteSetupState extends State<ViewQuoteSetup> {
  late final Map<String, dynamic> information;

  @override
  void initState() {
    super.initState();

    information = <String, dynamic>{
      'Age Bracket': widget.isNewQuote || widget.quote == null
          ? 'Choose Age Bracket'
          : widget.quote!.ageBracket,
      'Inpatient Cover Limit': widget.isNewQuote || widget.quote == null
          ? 'Inpatient Cover Limit'
          : widget.quote!.inPatientCoverLimit,
      'Spouse Covered?': widget.isNewQuote || widget.quote == null
          ? 'Spouse Covered?'
          : widget.quote!.spouseCovered,
      'How many children?': widget.isNewQuote || widget.quote == null
          ? 'How many children?'
          : widget.quote!.howManyChildren.toString(),
      'Cover Children?': widget.isNewQuote || widget.quote == null
          ? 'Cover Children?'
          : widget.quote!.coverChildren,
      'Spouse Age Bracket': widget.isNewQuote || widget.quote == null
          ? 'Spouse Age Bracket'
          : widget.quote!.spouseAgeBracket,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
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
                dropdownItems: entry.key == 'Age Bracket'
                    ? [
                        '5 to 9 years',
                        '10 to 13 years',
                        '14 to 17 years',
                        '18 to 30 years',
                        'Above 30 years'
                      ]
                    : entry.key == 'Inpatient Cover Limit'
                        ? [
                            'KES 10,000',
                            'KES 30,000',
                            'KES 50,000',
                            'KES 100,000',
                            'KES 500,000',
                            'Above KES 500,000'
                          ]
                        : entry.key == 'Spouse Covered?'
                            ? ['Yes', 'No']
                            : entry.key == 'How many children?'
                                ? ['0', '1', '3', '6', 'Above 6']
                                : entry.key == 'Cover Children?'
                                    ? ['Yes', 'No']
                                    : entry.key == 'Spouse Age Bracket'
                                        ? [
                                            '18 to 30 years',
                                            '30 to 35 years',
                                            'Above 35 years'
                                          ]
                                        : null,
                readOnly: !widget.isNewQuote))
            .toList(),
      ),
    );
  }
}
