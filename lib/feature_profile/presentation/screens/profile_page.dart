import 'package:dentsu_quotes/feature_profile/presentation/components/profile_card.dart';
import 'package:dentsu_quotes/feature_profile/presentation/components/profile_content_card.dart';
import 'package:dentsu_quotes/feature_profile/presentation/components/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../feature_auth/presentation/controller/auth_controller.dart';
import '../../../theme/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Column(
              children: [
                ProfileCard(),

                //  profile details
                ProfileDetails(),
              ],
            ),

            Expanded(
                child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //  leads
                  const ProfileContentCard(title: 'Leads', count: '1.2k'),
                  //  quotes
                  Obx(() => ProfileContentCard(
                      title: 'Quotes',
                      count: _authController.user.value?.quotes.length
                              .toString() ??
                          '0')),
                  //  Products
                  const ProfileContentCard(title: 'Products', count: '200'),
                ],
              ),
            )),

            //  logout
            GestureDetector(
              onTap: () async {
                await _authController.signOut();
              },
              child: UnconstrainedBox(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 24),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColorLight,
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.logout_rounded, color: textWhite900),
                      const SizedBox(width: 12),
                      Text('Logout',
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .fontSize,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontWeight,
                              color: textWhite900,
                              decoration: TextDecoration.none))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
