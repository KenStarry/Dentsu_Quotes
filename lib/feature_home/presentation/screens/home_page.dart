import 'package:dentsu_quotes/feature_home/presentation/components/new_leads_section.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/overview_cards_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Text('Dashboard',
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textTheme.titleLarge!.color
                    ))),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            //  home overview cards
            const OverviewCardsSection(),

            const SliverToBoxAdapter(child: SizedBox(height: 24)),

            //  new leads section
            const NewLeadsSection()
          ],
        ),
      ),
    );
  }
}
