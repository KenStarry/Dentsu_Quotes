import 'package:dentsu_quotes/core/presentation/components/custom_back_breadcrumb.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/view_quote_information.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/components/view_quote_setup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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

  late final DashboardController _dashboardController;
  late final TabController _tabController;

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

    _dashboardController = Get.find<DashboardController>();
    _tabController = TabController(length: 3, vsync: this);
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
                      physics: const BouncingScrollPhysics(),
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
                  child: TabBarView(children: [
                    ViewQuoteInformation(controllers: <TextEditingController>[
                      _firstNameController,
                      _middleNameController,
                      _lastNameController,
                      _leadSourceController,
                      _quoteIdController,
                      _businessUnitController,
                      _leadIdController,
                      _sourceController,
                      _capturingUserController
                    ], isNewQuote: widget.isNewQuote),
                    ViewQuoteSetup(isNewQuote: widget.isNewQuote),
                    ViewQuoteBenefits(isNewQuote: widget.isNewQuote),
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
