import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

class LeadsPage extends StatefulWidget {
  const LeadsPage({super.key});

  @override
  State<LeadsPage> createState() => _LeadsPageState();
}

class _LeadsPageState extends State<LeadsPage> {
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
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Leads',
                    style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.titleLarge!.color)),

                //  new lead button
                Row(
                  children: [
                    FilledButton(
                        onPressed: () {},
                        style: FilledButton.styleFrom(
                            surfaceTintColor: Theme.of(context).primaryColor,
                            backgroundColor: Theme.of(context).primaryColor),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.add_rounded,
                              color: textWhite700,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'New lead',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .fontSize,
                                  fontWeight: FontWeight.w400,
                                  color: textWhite900),
                            )
                          ],
                        )),
                    const SizedBox(width: 8),
                    IconButton(
                        onPressed: () {},
                        icon:
                            Icon(Icons.more_horiz_rounded, color: textBlack300))
                  ],
                )
              ],
            )),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}
