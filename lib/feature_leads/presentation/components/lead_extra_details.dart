import 'package:dentsu_quotes/feature_leads/presentation/components/extra_details_content.dart';
import 'package:flutter/material.dart';

import '../../../core/domain/model/lead.dart';

class LeadExtraDetailsSection extends StatelessWidget {
  final Lead lead;
  const LeadExtraDetailsSection({super.key, required this.lead});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 32),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            TabBar(
                isScrollable: false,
                physics: const BouncingScrollPhysics(),
                indicatorSize: TabBarIndicatorSize.label,
                tabAlignment: TabAlignment.fill,
                indicatorColor: Theme.of(context).primaryColorLight,
                labelColor: Theme.of(context).primaryColorLight,
                labelStyle: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.bodyMedium!.fontWeight),
                tabs: const [
                  Tab(text: 'Lead Details'),
                  Tab(text: 'Assigned Lead'),
                ]),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.transparent,
              child: TabBarView(children: [
                ExtraDetailsContent(details: {
                  'Lead Source': lead.leadSource,
                  'Product Requested': lead.productRequested,
                  'Product Sold': lead.productSold,
                  'Lead Close Reason': lead.leadCloseReason,
                  'Recording Agent': lead.recordingAgent
                }),
                ExtraDetailsContent(details: {
                  'Lead Source': lead.leadSource,
                  'Product Requested': lead.productRequested,
                  'Product Sold': lead.productSold,
                  'Lead Close Reason': lead.leadCloseReason,
                  'Recording Agent': lead.recordingAgent
                }),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
