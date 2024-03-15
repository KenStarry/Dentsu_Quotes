import 'package:flutter/material.dart';

class OverviewCardsSection extends StatefulWidget {
  const OverviewCardsSection({super.key});

  @override
  State<OverviewCardsSection> createState() => _OverviewCardsSectionState();
}

class _OverviewCardsSectionState extends State<OverviewCardsSection> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        height: 250,
        color: Colors.red,
        child: Text("Hello"),
      ),
    );
  }
}
