import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

class ViewQuoteSetup extends StatefulWidget {
  const ViewQuoteSetup({super.key});

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
      'Age Bracket': '18 to 30 years',
      'Inpatient Cover Limit': 'KES 500,000',
      'Spouse Covered?': 'Yes',
      'How many children?': '6 children',
      'Cover Children?': 'Yes',
      'Spouse Age Bracket': '18 to 30 years',
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
                  controller:
                      controllers[information.keys.toList().indexOf(entry.key)],
                  hintText: entry.value,
                  readOnly: true
                ))
            .toList(),
      ),
    );
  }
}
