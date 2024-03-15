import 'package:flutter/material.dart';

class OverviewCardModel {
  final String title;
  final VoidCallback onTap;

  const OverviewCardModel({required this.title, required this.onTap});
}
