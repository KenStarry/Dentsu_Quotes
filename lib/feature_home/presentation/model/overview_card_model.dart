import 'package:flutter/material.dart';

class OverviewCardModel {
  final String title;
  final Widget content;
  final VoidCallback onTap;

  const OverviewCardModel(
      {required this.title, required this.content, required this.onTap});
}
