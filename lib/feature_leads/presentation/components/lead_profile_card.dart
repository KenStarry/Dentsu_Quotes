import 'package:dentsu_quotes/core/domain/model/lead.dart';
import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:dentsu_quotes/feature_leads/presentation/components/profile_card_detail_card.dart';
import 'package:flutter/material.dart';

class LeadProfileCard extends StatelessWidget {
  final Lead lead;

  const LeadProfileCard({super.key, required this.lead});

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
            //  header
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColorDark),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Avatar(avatarUrl: lead.avatarUrl, size: Size(double.infinity, double.infinity))
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lead.fullName,
                        style: TextStyle(
                            fontWeight: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .fontWeight,
                            fontSize: 18,
                            color:
                                Theme.of(context).textTheme.titleSmall!.color)),
                    const SizedBox(height: 8),
                    Text(lead.location,
                        style: TextStyle(
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontWeight,
                            fontSize: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .fontSize,
                            color: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .color!
                                .withOpacity(0.4))),
                  ],
                )
              ],
            ),

            const SizedBox(height: 24),

            // details
            ProfileCardDetailCard(
                title: 'Lead Created', date: lead.leadCreated),
            const SizedBox(height: 16),
            ProfileCardDetailCard(
                title: 'Last Contacted', date: lead.lastContacted),
            const SizedBox(height: 16),
            ProfileCardDetailCard(
                title: 'Next Appointment', date: lead.nextAppointment),
          ],
        ),
      ),
    );
  }
}
