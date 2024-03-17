import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

class ViewQuoteInformation extends StatefulWidget {
  final List<TextEditingController> controllers;
  final bool isNewQuote;

  const ViewQuoteInformation(
      {super.key, required this.controllers, required this.isNewQuote});

  @override
  State<ViewQuoteInformation> createState() => _ViewQuoteInformationState();
}

class _ViewQuoteInformationState extends State<ViewQuoteInformation> {
  late final Map<String, dynamic> information;

  @override
  void initState() {
    super.initState();

    information = <String, dynamic>{
      'First Name': widget.isNewQuote ? 'Enter First Name' : 'Stacey',
      'Middle Name': widget.isNewQuote ? 'Enter Middle Name' : 'Nyawira',
      'Last Name': widget.isNewQuote ? 'Enter Last Name' : 'Waruguru',
      'Originating Lead Source':
          widget.isNewQuote ? 'Originating Lead Source' : 'Sales Agent',
      'Quote ID': widget.isNewQuote ? 'Quote ID' : 'QUO-02091-V2C8D9',
      'Owning Business Unit':
          widget.isNewQuote ? 'Owning Business Unit' : 'Kenya',
      'Lead ID': widget.isNewQuote ? "Quote's Lead Id" : 0.toString(),
      'Source': widget.isNewQuote ? 'Quote Source' : 'Agent portal',
      'Capturing User': widget.isNewQuote ? 'Capturing User' : 'Jeremy Kibor'
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
            .map((entry) => widget.isNewQuote && entry.key == 'Quote ID'
                ? const SizedBox.shrink()
                : QuoteInfoTextField(
                    header: entry.key,
                    controller: !widget.isNewQuote
                        ? null
                        : widget.controllers[
                            information.keys.toList().indexOf(entry.key)],
                    hintText: entry.value,
                    initialValue: widget.isNewQuote ? null : entry.value,
                    isDropdown: entry.key == 'Source',
                    dropdownItems: entry.key == 'Source'
                        ? ['Agent Portal', 'Other']
                        : null,
                    readOnly: !widget.isNewQuote))
            .toList(),
      ),
    );
  }
}
