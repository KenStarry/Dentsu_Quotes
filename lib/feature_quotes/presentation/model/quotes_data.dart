import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/domain/model/quote.dart';
import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class TableDataSource extends DataTableSource {
  final List<Map<String, dynamic>> data;
  final Function(bool selected, int index) onSelectChanged;
  final DashboardController dashboardController;

  TableDataSource({required this.data, required this.dashboardController, required this.onSelectChanged});

  @override
  DataRow? getRow(int index) => DataRow(
          color: (index + 1) % 2 == 0
              ? MaterialStateProperty.all(
                  Theme.of(Get.context!).primaryColorDark)
              : MaterialStateProperty.all(const Color(0xffFAF8F8)),
          onSelectChanged: (selected) {
            onSelectChanged(selected!, index);
          },
          cells: [
            DataCell(Text(data[index]['id'].toString())),
            DataCell(Text(data[index]['customerName'].toString())),
          ]);

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
