import 'package:dentsu_quotes/core/domain/model/lead.dart';
import 'package:dentsu_quotes/feature_auth/presentation/controller/auth_controller.dart';
import 'package:dentsu_quotes/feature_leads/presentation/components/lead_actions.dart';
import 'package:dentsu_quotes/feature_leads/presentation/components/lead_extra_details.dart';
import 'package:dentsu_quotes/feature_leads/presentation/components/lead_profile_card.dart';
import 'package:dentsu_quotes/feature_leads/presentation/components/lead_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/presentation/components/custom_back_breadcrumb.dart';
import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class ViewLeadPage extends StatefulWidget {
  final Lead lead;
  const ViewLeadPage({super.key, required this.lead});

  @override
  State<ViewLeadPage> createState() => _ViewLeadPageState();
}

class _ViewLeadPageState extends State<ViewLeadPage> {
  late final DashboardController _dashboardController;
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _dashboardController = Get.find<DashboardController>();
    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                  child: CustomBackBreadcrumb(
                      backText: 'Back to all leads',
                      currentPositionText: 'Lead - ${widget.lead.id}',
                      onBackPressed: () {
                        _dashboardController.setViewLeadActive(active: false);
                      })),

              const SliverToBoxAdapter(child: SizedBox(height: 32)),

              //  lead status
              LeadStatus(contacted: widget.lead.leadStatus == 'Contacted',),

              const SliverToBoxAdapter(child: SizedBox(height: 32)),

              LeadActions(
                onCancelLead: () {},
                onNext: () {
                  //  populate the next lead
                  if (_dashboardController.viewLeadIndex.value < _authController.user.value!.leads.length - 1) {
                    _dashboardController.setViewLeadActive(active: true, index: _dashboardController.viewLeadIndex.value + 1);
                  }
                },
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              LeadProfileCard(lead: widget.lead),

              const SliverToBoxAdapter(child: SizedBox(height: 32)),

              //  extra details section
              LeadExtraDetailsSection(lead: widget.lead),

              const SliverToBoxAdapter(child: SizedBox(height: 48)),
            ],
          ),
        ),
      ),
    );
  }
}
