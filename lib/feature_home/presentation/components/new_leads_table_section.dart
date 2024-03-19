import 'package:data_table_2/data_table_2.dart';
import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:dentsu_quotes/core/presentation/components/my_lottie.dart';
import 'package:dentsu_quotes/feature_auth/presentation/controller/auth_controller.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/new_leads_pagination_item.dart';
import 'package:dentsu_quotes/feature_leads/presentation/screens/view_lead_page.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/model/quotes_data.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class NewLeadsTableSection extends StatefulWidget {
  final String? tableTitle;

  const NewLeadsTableSection({super.key, this.tableTitle});

  @override
  State<NewLeadsTableSection> createState() => _NewLeadsTableSectionState();
}

class _NewLeadsTableSectionState extends State<NewLeadsTableSection> {
  late final DashboardController _dashboardController;
  late final AuthController _authController;
  late final PaginatorController _quotesPaginatorController;
  late final PaginatorController _leadsPaginatorController;

  @override
  void initState() {
    super.initState();

    _dashboardController = Get.find<DashboardController>();
    _authController = Get.find<AuthController>();
    _quotesPaginatorController = PaginatorController();
    _leadsPaginatorController = PaginatorController();

    _quotesPaginatorController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {});
      });
    });

    _leadsPaginatorController.addListener(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() {});
      });
    });

    ever(_authController.user, (user) {
      if (user != null) {
        initializeQuotesDataSource();
      }
    });
  }

  void initializeQuotesDataSource() {
    _authController.setQuotesData(
        quotesData: TableDataSource(
            data: _authController.user.value!.quotes
                .map((quote) => {
                      'id':
                          _authController.user.value!.quotes.indexOf(quote) + 1,
                      'customerName':
                          '${quote.firstName} ${quote.middleName} ${quote.lastName}'
                    })
                .toList(),
            onSelectChanged: (selected, index) {
              if (selected == true) {
                _dashboardController.setViewQuoteActive(
                    active: true, viewQuoteIndex: index);
              }
            },
            dashboardController: _dashboardController));

    _authController.setLeadsData(
        leadsData: TableDataSource(
            data: _authController.user.value!.leads
                .map((lead) => {
                      'id': _authController.user.value!.leads.indexOf(lead) + 1,
                      'customerName': lead.fullName
                    })
                .toList(),
            onSelectChanged: (selected, index) {
              _dashboardController.setViewLeadActive(
                  active: true, index: index);
            },
            dashboardController: _dashboardController));
  }

  @override
  Widget build(BuildContext context) {
    final List<DataColumn2> newLeadsColumns = <DataColumn2>[
      DataColumn2(
          label: Text('#', style: Theme.of(context).textTheme.bodyLarge),
          size: ColumnSize.M),
      DataColumn2(
          label: Text('Customer Name',
              style: Theme.of(context).textTheme.bodyLarge),
          size: ColumnSize.L),
    ];

    return SliverToBoxAdapter(
      child: Obx(
        () => Container(
          width: double.infinity,
          height: (_authController.user.value == null ||
                      _authController.user.value!.quotes.isEmpty) &&
                  widget.tableTitle != null
              ? 450
              : 840,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    border: Border(
                        bottom: BorderSide(
                            color: textBlack100.withOpacity(0.5), width: 2))),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(widget.tableTitle ?? 'New Leads',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).textTheme.bodyLarge!.color)),
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () {
                  final quotes = _authController.user.value == null
                      ? <Quote>[]
                      : _authController.user.value!.quotes;
                  return quotes.isEmpty && widget.tableTitle != null
                      ? Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const MyLottie(
                                  lottie: 'assets/images/json/quotation.json',
                                  width: 150,
                                  height: 150),
                              const SizedBox(height: 24),
                              Text("No Quotes yet. Let's create a new one",
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontWeight,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .color,
                                  )),
                              const SizedBox(height: 24),
                              UnconstrainedBox(
                                child: FilledButton(
                                    onPressed: () {
                                      //  new quote
                                      _dashboardController.setViewQuoteActive(
                                          active: true, isNewQuote: true);
                                    },
                                    style: FilledButton.styleFrom(
                                        surfaceTintColor:
                                            Theme.of(context).primaryColorLight,
                                        backgroundColor: Theme.of(context)
                                            .primaryColorLight),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.add_rounded,
                                          color: textWhite700,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          'New quote',
                                          style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .fontSize,
                                              fontWeight: FontWeight.w400,
                                              color: textWhite900),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )
                      : widget.tableTitle != null
                          ? Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Obx(
                                      () => PaginatedDataTable2(
                                          controller:
                                              _quotesPaginatorController,
                                          columns: newLeadsColumns,
                                          source: _authController
                                                  .quotesData.value ??
                                              TableDataSource(
                                                  data: [],
                                                  onSelectChanged:
                                                      (selected, index) {},
                                                  dashboardController:
                                                      _dashboardController),
                                          columnSpacing: 0,
                                          border: null,
                                          dividerThickness: 0,
                                          showCheckboxColumn: false,
                                          horizontalMargin: 30,
                                          dataRowHeight: 55,
                                          lmRatio: 3.0,
                                          hidePaginator: true),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    margin: const EdgeInsets.only(bottom: 16),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColorDark,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Showing ${_quotesPaginatorController.isAttached ? _quotesPaginatorController.currentRowIndex + 1 : 1} to ${_quotesPaginatorController.isAttached ? (_quotesPaginatorController.rowsPerPage + _quotesPaginatorController.currentRowIndex) : 0} of ${_quotesPaginatorController.isAttached ? _quotesPaginatorController.rowCount : 0}',
                                            style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .fontSize,
                                                fontWeight: FontWeight.w500,
                                                color: textBlack300)),

                                        const SizedBox(height: 8),

                                        //  pagination element
                                        _quotesPaginatorController.isAttached
                                            ? NewLeadsPaginationItem(
                                                activeIndex:
                                                    (_leadsPaginatorController
                                                                .currentRowIndex /
                                                            10)
                                                        .ceil(),
                                                numberOfPages: _quotesPaginatorController
                                                                .rowCount %
                                                            _quotesPaginatorController
                                                                .rowsPerPage !=
                                                        0
                                                    ? (_quotesPaginatorController
                                                                .rowCount ~/
                                                            _quotesPaginatorController
                                                                .rowsPerPage) +
                                                        1
                                                    : (_quotesPaginatorController
                                                            .rowCount ~/
                                                        _quotesPaginatorController
                                                            .rowsPerPage),
                                                onPrev: () {
                                                  if (_quotesPaginatorController
                                                      .isAttached) {
                                                    _quotesPaginatorController
                                                        .goToPreviousPage();
                                                  }
                                                },
                                                onNext: () {
                                                  if (_quotesPaginatorController
                                                      .isAttached) {
                                                    _quotesPaginatorController
                                                        .goToNextPage();
                                                  }
                                                },
                                                onNumberIndexClicked: (index) {
                                                  if (_quotesPaginatorController
                                                      .isAttached) {
                                                    _quotesPaginatorController
                                                        .goToPageWithRow(
                                                            index * 9);
                                                  }
                                                },
                                              )
                                            : const SizedBox.shrink()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Obx(
                                      () => PaginatedDataTable2(
                                          controller: _leadsPaginatorController,
                                          columns: newLeadsColumns,
                                          source:
                                              _authController.leadsData.value ??
                                                  TableDataSource(
                                                      data: [],
                                                      onSelectChanged:
                                                          (selected, index) {},
                                                      dashboardController:
                                                          _dashboardController),
                                          columnSpacing: 0,
                                          border: null,
                                          dividerThickness: 0,
                                          showCheckboxColumn: false,
                                          horizontalMargin: 30,
                                          dataRowHeight: 55,
                                          lmRatio: 3.0,
                                          hidePaginator: true),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 100,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    margin: const EdgeInsets.only(bottom: 16),
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColorDark,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12)),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            'Showing ${_leadsPaginatorController.isAttached ? _leadsPaginatorController.currentRowIndex + 1 : 1} to ${_leadsPaginatorController.isAttached ? (_leadsPaginatorController.rowsPerPage + _leadsPaginatorController.currentRowIndex) : 0} of ${_leadsPaginatorController.isAttached ? _leadsPaginatorController.rowCount : 0}',
                                            style: TextStyle(
                                                fontSize: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .fontSize,
                                                fontWeight: FontWeight.w500,
                                                color: textBlack300)),

                                        const SizedBox(height: 8),

                                        //  pagination element
                                        _leadsPaginatorController.isAttached
                                            ? NewLeadsPaginationItem(
                                                activeIndex:
                                                    (_leadsPaginatorController
                                                                .currentRowIndex /
                                                            10)
                                                        .ceil(),
                                                numberOfPages: _leadsPaginatorController
                                                                .rowCount %
                                                            _leadsPaginatorController
                                                                .rowsPerPage !=
                                                        0
                                                    ? (_leadsPaginatorController
                                                                .rowCount ~/
                                                            _leadsPaginatorController
                                                                .rowsPerPage) +
                                                        1
                                                    : (_leadsPaginatorController
                                                            .rowCount ~/
                                                        _leadsPaginatorController
                                                            .rowsPerPage),
                                                onPrev: () {
                                                  if (_leadsPaginatorController
                                                      .isAttached) {
                                                    _leadsPaginatorController
                                                        .goToPreviousPage();
                                                  }
                                                },
                                                onNext: () {
                                                  if (_leadsPaginatorController
                                                      .isAttached) {
                                                    _leadsPaginatorController
                                                        .goToNextPage();
                                                  }
                                                },
                                                onNumberIndexClicked: (index) {
                                                  if (_leadsPaginatorController
                                                      .isAttached) {
                                                    _leadsPaginatorController
                                                        .goToPageWithRow(
                                                            index * 9);
                                                  }
                                                },
                                              )
                                            : const SizedBox.shrink()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
