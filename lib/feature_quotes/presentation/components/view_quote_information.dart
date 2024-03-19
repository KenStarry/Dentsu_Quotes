import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/quote_info_textfield.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class ViewQuoteInformation extends StatefulWidget {
  final Quote? quote;
  final List<TextEditingController> controllers;
  final bool isNewQuote;
  final VoidCallback onNext;

  const ViewQuoteInformation(
      {super.key,
      required this.quote,
      required this.controllers,
      required this.isNewQuote,
      required this.onNext});

  @override
  State<ViewQuoteInformation> createState() => _ViewQuoteInformationState();
}

class _ViewQuoteInformationState extends State<ViewQuoteInformation> {
  late final Map<String, dynamic> information;

  @override
  void initState() {
    super.initState();

    information = <String, dynamic>{
      'First Name': widget.isNewQuote || widget.quote == null
          ? 'Enter First Name'
          : widget.quote!.firstName,
      'Middle Name': widget.isNewQuote || widget.quote == null
          ? 'Enter Middle Name'
          : widget.quote!.middleName,
      'Last Name': widget.isNewQuote || widget.quote == null
          ? 'Enter Last Name'
          : widget.quote!.lastName,
      'Originating Lead Source': widget.isNewQuote || widget.quote == null
          ? 'Originating Lead Source'
          : widget.quote!.originatingLeadSource,
      'Quote ID': widget.isNewQuote || widget.quote == null
          ? 'Quote ID'
          : widget.quote!.quoteId,
      'Owning Business Unit': widget.isNewQuote || widget.quote == null
          ? 'Owning Business Unit'
          : widget.quote!.owningBusinessUnit,
      'Lead ID': widget.isNewQuote || widget.quote == null
          ? "Quote's Lead Id"
          : widget.quote!.leadId,
      'Source': widget.isNewQuote || widget.quote == null
          ? 'Quote Source'
          : widget.quote!.source,
      'Capturing User': widget.isNewQuote || widget.quote == null
          ? 'Capturing User'
          : widget.quote!.capturingUser
    };
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

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.onNext,
                child: UnconstrainedBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
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
                          'Next',
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
          ),
        ],
      ),
    );
  }
}
