import 'package:data_table_2/data_table_2.dart';
import 'package:dentsu_quotes/core/presentation/components/my_lottie.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/new_leads_pagination_item.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class NewLeadsTableSection extends StatefulWidget {
  final String? tableTitle;
  final VoidCallback? onRowClicked;

  const NewLeadsTableSection({super.key, this.tableTitle, this.onRowClicked});

  @override
  State<NewLeadsTableSection> createState() => _NewLeadsTableSectionState();
}

class _NewLeadsTableSectionState extends State<NewLeadsTableSection> {
  final List<String> customers = [
    'Joseph Kimeu Walter',
    'Kani Odili',
    'Sanaa Anikulapo-Kuti',
    'Imara Akintola',
    'Mtupeni Ibori',
    'Khary Fagbure',
    'Jabali Nnamani',
    'Kalere Biobaku',
    'Shomari Jaja'
  ];

  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    _dashboardController = Get.find<DashboardController>();
  }

  @override
  Widget build(BuildContext context) {
    final List<DataColumn2> newLeadsColumns = <DataColumn2>[
      DataColumn2(
          label: Text('#', style: Theme.of(context).textTheme.bodyLarge),
          size: ColumnSize.S),
      DataColumn2(
          label: Text('Customer Name',
              style: Theme.of(context).textTheme.bodyLarge),
          size: ColumnSize.L),
    ];

    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: true && widget.tableTitle != null ? 450 : 800,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
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
            true && widget.tableTitle != null
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
                              color:
                                  Theme.of(context).textTheme.bodyMedium!.color,
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
                                  backgroundColor:
                                      Theme.of(context).primaryColorLight),
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
                : Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: DataTable2(
                              dataRowHeight: 55,
                              columnSpacing: 0,
                              bottomMargin: 0,
                              columns: newLeadsColumns,
                              rows: List<DataRow2>.generate(
                                  customers.length,
                                  (index) => DataRow2(
                                          decoration: BoxDecoration(
                                            border: null,
                                            color: (index + 1) % 2 == 0
                                                ? Theme.of(context)
                                                    .primaryColorDark
                                                : const Color(0xffFAF8F8),
                                          ),
                                          onTap: widget.onRowClicked,
                                          cells: [
                                            DataCell(Text('0${index + 1}')),
                                            DataCell(Text(customers[index])),
                                          ]))),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Showing 1 to 10 of 200',
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .fontSize,
                                      fontWeight: FontWeight.w500,
                                      color: textBlack300)),

                              const SizedBox(height: 8),

                              //  pagination element
                              NewLeadsPaginationItem()
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
