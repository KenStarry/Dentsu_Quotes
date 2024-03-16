import 'package:dentsu_quotes/feature_leads/presentation/components/profile_card_detail_card.dart';
import 'package:flutter/material.dart';

class LeadProfileCard extends StatelessWidget {
  const LeadProfileCard({super.key});

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
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(120),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Joseph Kimeu Walter',
                        style: TextStyle(
                            fontWeight: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .fontWeight,
                            fontSize: 18,
                            color:
                                Theme.of(context).textTheme.titleSmall!.color)),
                    const SizedBox(height: 8),
                    Text('Nairobi, Kenya',
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
            const ProfileCardDetailCard(
                title: 'Lead Created', date: '10 August 2022'),
            const SizedBox(height: 16),
            const ProfileCardDetailCard(
                title: 'Last Contacted', date: '16 August 2022'),
            const SizedBox(height: 16),
            const ProfileCardDetailCard(
                title: 'Next Appointment', date: '29 August 2022'),
          ],
        ),
      ),
    );
  }
}
