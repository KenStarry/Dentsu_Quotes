import 'package:flutter/material.dart';

class ViewQuoteInformation extends StatefulWidget {
  const ViewQuoteInformation({super.key});

  @override
  State<ViewQuoteInformation> createState() => _ViewQuoteInformationState();
}

class _ViewQuoteInformationState extends State<ViewQuoteInformation> {
  late final TextEditingController _firstNameController;
  late final TextEditingController _middleNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _leadSourceController;
  late final TextEditingController _quoteIdController;
  late final TextEditingController _businessUnitController;
  late final TextEditingController _leadIdController;
  late final TextEditingController _sourceController;
  late final TextEditingController _capturingUserController;
  late final Map<String, dynamic> information;

  @override
  void initState() {
    super.initState();

    _firstNameController = TextEditingController();
    _middleNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _leadSourceController = TextEditingController();
    _quoteIdController = TextEditingController();
    _businessUnitController = TextEditingController();
    _leadIdController = TextEditingController();
    _sourceController = TextEditingController();
    _capturingUserController = TextEditingController();

    information = <String, dynamic>{
      'First Name': 'Stacey',
      'Middle Name': 'Nyawira',
      'Last Name': 'Waruguru',
      'Originating Lead Source': 'Sales Agent',
      'Quote ID': 'QUO-02091-V2C8D9',
      'Owning Business Unit': 'Kenya',
      'Lead ID': 0,
      'Source': 'Agent portal',
      'Capturing User': 'Jeremy Kibor'
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }
}
