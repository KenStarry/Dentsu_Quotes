import 'package:dentsu_quotes/feature_dashboard/presentation/components/search_item_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sliver_tools/sliver_tools.dart';

import '../../../feature_auth/presentation/controller/auth_controller.dart';

class SearchLeadsSection extends StatefulWidget {
  const SearchLeadsSection({super.key});

  @override
  State<SearchLeadsSection> createState() => _SearchLeadsSectionState();
}

class _SearchLeadsSectionState extends State<SearchLeadsSection> {
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();
    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedSliver(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(12)),
      sliver: SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        sliver: MultiSliver(children: [
          SliverToBoxAdapter(
              child:
                  Text('Leads', style: Theme.of(context).textTheme.titleSmall)),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          Obx(
            () => SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => SearchItemCard(
                        index: index,
                        title:
                            _authController.user.value?.leads[index].fullName ??
                                '',
                        onTap: () {
                          //  open view lead screen
                        }),
                    childCount: _authController.user.value?.leads.length ?? 0)),
          )
        ]),
      ),
    );
  }
}
