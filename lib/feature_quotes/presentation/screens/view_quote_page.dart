import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:dentsu_quotes/core/domain/model/response_state.dart';
import 'package:dentsu_quotes/core/presentation/components/custom_back_breadcrumb.dart';
import 'package:dentsu_quotes/core/presentation/components/show_snackbar.dart';
import 'package:dentsu_quotes/feature_auth/presentation/controller/auth_controller.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/view_quote_information.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/view_quote_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/presentation/controller/core_controller.dart';
import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';
import '../components/view_quote_benefits.dart';

class ViewQuotePage extends StatefulWidget {
  final bool isNewQuote;

  const ViewQuotePage({super.key, this.isNewQuote = false});

  @override
  State<ViewQuotePage> createState() => _ViewQuotePageState();
}

class _ViewQuotePageState extends State<ViewQuotePage>
    with SingleTickerProviderStateMixin {
  late final TextEditingController _firstNameController;
  late final TextEditingController _middleNameController;
  late final TextEditingController _lastNameController;
  late final TextEditingController _leadSourceController;
  late final TextEditingController _quoteIdController;
  late final TextEditingController _businessUnitController;
  late final TextEditingController _leadIdController;
  late final TextEditingController _sourceController;
  late final TextEditingController _capturingUserController;
  late final TextEditingController _ageBracketController;
  late final TextEditingController _inPatientCoverController;
  late final TextEditingController _spouseCoveredController;
  late final TextEditingController _childrenCountController;
  late final TextEditingController _coverChildrenController;
  late final TextEditingController _spouseAgeController;

  late final DashboardController _dashboardController;
  late final CoreController _coreController;
  late final AuthController _authController;
  late final TabController _tabController;
  Quote? activeQuote;

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

    //  Setup Section
    _ageBracketController = TextEditingController();
    _inPatientCoverController = TextEditingController();
    _spouseCoveredController = TextEditingController();
    _childrenCountController = TextEditingController();
    _coverChildrenController = TextEditingController();
    _spouseAgeController = TextEditingController();

    _dashboardController = Get.find<DashboardController>();
    _coreController = Get.find<CoreController>();
    _authController = Get.find<AuthController>();
    _tabController = TabController(length: 3, vsync: this);

    if (!widget.isNewQuote) {
      activeQuote = _authController
          .user.value!.quotes[_dashboardController.viewQuoteIndex.value - 1];
    }

    if (widget.isNewQuote) {
      addControllerListeners();
    }
  }

  void addControllerListeners() {
    _firstNameController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(firstName: _firstNameController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _middleNameController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(middleName: _middleNameController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _lastNameController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(lastName: _lastNameController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _leadSourceController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(originatingLeadSource: _leadSourceController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _quoteIdController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(quoteId: _quoteIdController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _businessUnitController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(owningBusinessUnit: _businessUnitController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _leadIdController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(leadId: _leadIdController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _sourceController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(source: _sourceController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _capturingUserController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(capturingUser: _capturingUserController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _ageBracketController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(ageBracket: _ageBracketController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _inPatientCoverController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(inPatientCoverLimit: _inPatientCoverController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _spouseCoveredController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(spouseCovered: _spouseCoveredController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _childrenCountController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(howManyChildren: int.parse(_childrenCountController.text));
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _coverChildrenController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(coverChildren: _coverChildrenController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
    _spouseAgeController.addListener(() {
      final newQuote = _coreController.newQuote.value
          .copyWith(spouseAgeBracket: _spouseAgeController.text);
      _coreController.updateQuoteValue(updatedQuote: newQuote);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              //  title
              SliverToBoxAdapter(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBackBreadcrumb(
                      backText: 'Back to all quotes',
                      onBackPressed: () {
                        _dashboardController.setViewQuoteActive(active: false);
                      }),
                  const SizedBox(height: 8),
                  Text(widget.isNewQuote ? 'New Quote' : 'View Quote',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleMedium!.fontSize,
                          fontWeight: FontWeight.w600,
                          color:
                              Theme.of(context).textTheme.titleLarge!.color)),
                  const SizedBox(height: 8),
                  TabBar(
                      isScrollable: true,
                      physics: widget.isNewQuote
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabAlignment: TabAlignment.start,
                      padding: EdgeInsets.zero,
                      indicatorColor: Theme.of(context).primaryColorLight,
                      labelColor: Theme.of(context).primaryColorLight,
                      labelStyle: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .fontWeight),
                      labelPadding: const EdgeInsets.only(right: 35),
                      tabs: const [
                        Tab(text: 'Quote Information'),
                        Tab(text: 'Setup'),
                        Tab(text: 'Benefits'),
                      ])
                ],
              )),

              const SliverToBoxAdapter(child: SizedBox(height: 32)),

              //  body
              SliverToBoxAdapter(
                child: SizedBox(
                  width: double.infinity,
                  height: 135 * 9,
                  child: TabBarView(
                      physics: widget.isNewQuote
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      children: [
                        ViewQuoteInformation(
                            quote: activeQuote,
                            controllers: <TextEditingController>[
                              _firstNameController,
                              _middleNameController,
                              _lastNameController,
                              _leadSourceController,
                              _quoteIdController,
                              _businessUnitController,
                              _leadIdController,
                              _sourceController,
                              _capturingUserController
                            ],
                            isNewQuote: widget.isNewQuote),
                        ViewQuoteSetup(
                            quote: activeQuote,
                            isNewQuote: widget.isNewQuote,
                            controllers: <TextEditingController>[
                              _ageBracketController,
                              _inPatientCoverController,
                              _spouseCoveredController,
                              _childrenCountController,
                              _coverChildrenController,
                              _spouseAgeController
                            ]),
                        ViewQuoteBenefits(
                          quote: activeQuote,
                          controllers: <TextEditingController>[
                            _inPatientCoverController
                          ],
                          isNewQuote: widget.isNewQuote,
                          onSave: () async {
                            //  save the new quote
                            final myNewQuote = _coreController.newQuote.value;

                            final updatedQuoteWithId = myNewQuote.copyWith(
                                quoteId: DateTime.timestamp().toString());

                            //  get current quotes
                            final List<Quote> currentQuotes =
                                _authController.user.value != null
                                    ? [..._authController.user.value!.quotes]
                                    : <Quote>[];

                            if (!currentQuotes
                                .map((quote) => quote.quoteId)
                                .contains(updatedQuoteWithId.quoteId)) {
                              currentQuotes.add(updatedQuoteWithId);
                            }

                            //  update the data in the DB
                            await _authController.updateUserDataOnDB(
                                data: {'quotes': currentQuotes},
                                onResponse: (response) {
                                  switch (response) {
                                    case ResponseState.success:
                                      showSnackbar(
                                          title: 'Success!',
                                          message: 'Quote Saved successfully!',
                                          iconData: Icons.done_rounded);

                                      //  navigate back to view quotes page
                                      _dashboardController.setViewQuoteActive(
                                          active: false);
                                      break;
                                    case ResponseState.loading:
                                      break;
                                    case ResponseState.failure:
                                      showSnackbar(
                                          title: 'Error!',
                                          message: 'Oops. Something went wrong',
                                          iconData: Icons.error_rounded);
                                      break;
                                  }
                                });
                          },
                          onDiscard: () {
                            _dashboardController.setViewQuoteActive(
                                active: false);
                          },
                        ),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
