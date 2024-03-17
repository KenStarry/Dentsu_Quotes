import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

class ViewQuoteInformation extends StatefulWidget {
  final Quote quote;
  final List<TextEditingController> controllers;
  final bool isNewQuote;

  const ViewQuoteInformation(
      {super.key,
      required this.quote,
      required this.controllers,
      required this.isNewQuote});

  @override
  State<ViewQuoteInformation> createState() => _ViewQuoteInformationState();
}

class _ViewQuoteInformationState extends State<ViewQuoteInformation> {
  late final Map<String, dynamic> information;

  @override
  void initState() {
    super.initState();

    information = <String, dynamic>{
      'First Name':
          widget.isNewQuote ? 'Enter First Name' : widget.quote.firstName,
      'Middle Name':
          widget.isNewQuote ? 'Enter Middle Name' : widget.quote.middleName,
      'Last Name':
          widget.isNewQuote ? 'Enter Last Name' : widget.quote.lastName,
      'Originating Lead Source': widget.isNewQuote
          ? 'Originating Lead Source'
          : widget.quote.originatingLeadSource,
      'Quote ID': widget.isNewQuote ? 'Quote ID' : widget.quote.quoteId,
      'Owning Business Unit': widget.isNewQuote
          ? 'Owning Business Unit'
          : widget.quote.owningBusinessUnit,
      'Lead ID': widget.isNewQuote ? "Quote's Lead Id" : widget.quote.leadId,
      'Source': widget.isNewQuote ? 'Quote Source' : widget.quote.source,
      'Capturing User':
          widget.isNewQuote ? 'Capturing User' : widget.quote.capturingUser
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
