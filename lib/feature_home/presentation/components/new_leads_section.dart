import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class NewLeadsSection extends StatefulWidget {
  const NewLeadsSection({super.key});

  @override
  State<NewLeadsSection> createState() => _NewLeadsSectionState();
}

class _NewLeadsSectionState extends State<NewLeadsSection> {
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

    return MultiSliver(children: [
      //  title
      SliverToBoxAdapter(
          child: Text('New Leads',
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).textTheme.titleLarge!.color))),
      const SliverToBoxAdapter(child: SizedBox(height: 24)),

      //  paginated table

      //  new leads table
      SliverToBoxAdapter(
        child: Container(
          width: double.infinity,
          height: 700,
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
                        topRight: Radius.circular(12))),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('New Leads',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.titleSmall!.fontSize,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).textTheme.bodyLarge!.color)),
                ),
              ),
              Expanded(
                child: DataTable2(
                    dataRowHeight: 55,
                    columnSpacing: 0,
                    columns: newLeadsColumns,
                    rows: List<DataRow2>.generate(
                        customers.length,
                        (index) => DataRow2(
                                decoration: BoxDecoration(
                                  border: null,
                                  color: (index + 1) % 2 == 0
                                      ? Theme.of(context).primaryColorDark
                                      : const Color(0xffFAF8F8),
                                ),
                                cells: [
                                  DataCell(Text('0${index + 1}')),
                                  DataCell(Text(customers[index])),
                                ]))),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
