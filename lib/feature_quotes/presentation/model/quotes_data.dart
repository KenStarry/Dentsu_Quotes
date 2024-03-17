import 'package:flutter/material.dart';

import '../../../core/domain/model/quote.dart';

class QuotesData extends DataTableSource {
  final List<Map<String, dynamic>> data;

  final List<Map<String, dynamic>> _data = List.generate(
      200, (index) => {'id': index, 'customerName': 'Name $index'});

  QuotesData({required this.data});

  @override
  DataRow? getRow(int index) => DataRow(cells: [
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
