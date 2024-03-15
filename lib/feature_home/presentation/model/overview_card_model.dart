import 'package:flutter/material.dart';

class OverviewCardModel {
  final String title;
  final Widget chart;
  final Widget details;
  final VoidCallback onTap;

  const OverviewCardModel(
      {required this.title,
      required this.chart,
      required this.details,
      required this.onTap});
}
