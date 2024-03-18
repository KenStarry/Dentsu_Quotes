import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/new_leads_table_section.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/overview_cards_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    _dashboardController = Get.find<DashboardController>();
  }

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

            const SliverToBoxAdapter(child: SizedBox(height: 32)),

            //  title
            SliverToBoxAdapter(
                child: Text('New Leads',
                    style: TextStyle(
                        fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.titleLarge!.color))),

            const SliverToBoxAdapter(child: SizedBox(height: 24)),

            //  new leads section
            const NewLeadsTableSection()
          ],
        ),
      ),
    );
  }
}
