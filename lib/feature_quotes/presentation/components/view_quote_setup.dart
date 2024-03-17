import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

class ViewQuoteSetup extends StatefulWidget {
  final bool isNewQuote;

  const ViewQuoteSetup({super.key, required this.isNewQuote});

  @override
  State<ViewQuoteSetup> createState() => _ViewQuoteSetupState();
}

class _ViewQuoteSetupState extends State<ViewQuoteSetup> {
  late final TextEditingController _ageBracketController;
  late final TextEditingController _inPatientCoverController;
  late final TextEditingController _spouseCoveredController;
  late final TextEditingController _childrenCountController;
  late final TextEditingController _coverChildrenController;
  late final TextEditingController _spouseAgeController;
  late final Map<String, dynamic> information;
  late final List<TextEditingController> controllers;

  @override
  void initState() {
    super.initState();

    _ageBracketController = TextEditingController();
    _inPatientCoverController = TextEditingController();
    _spouseCoveredController = TextEditingController();
    _childrenCountController = TextEditingController();
    _coverChildrenController = TextEditingController();
    _spouseAgeController = TextEditingController();

    controllers = <TextEditingController>[
      _ageBracketController,
      _inPatientCoverController,
      _spouseCoveredController,
      _childrenCountController,
      _coverChildrenController,
      _spouseAgeController
    ];

    information = <String, dynamic>{
      'Age Bracket':
          widget.isNewQuote ? 'Choose Age Bracket' : '18 to 30 years',
      'Inpatient Cover Limit':
          widget.isNewQuote ? 'Inpatient Cover Limit' : 'KES 500,000',
      'Spouse Covered?': widget.isNewQuote ? 'Spouse Covered?' : 'Yes',
      'How many children?':
          widget.isNewQuote ? 'How many children?' : '6 children',
      'Cover Children?': widget.isNewQuote ? 'Cover Children?' : 'Yes',
      'Spouse Age Bracket':
          widget.isNewQuote ? 'Spouse Age Bracket' : '18 to 30 years',
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
                    : controllers[information.keys.toList().indexOf(entry.key)],
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
