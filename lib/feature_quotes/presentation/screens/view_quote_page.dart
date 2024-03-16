import 'package:flutter/material.dart';

class ViewQuotePage extends StatefulWidget {
  const ViewQuotePage({super.key});

  @override
  State<ViewQuotePage> createState() => _ViewQuotePageState();
}

class _ViewQuotePageState extends State<ViewQuotePage> {
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
                child: Column(
                  children: [
                    Text('View Quote',
                        style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.titleMedium!.fontSize,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).textTheme.titleLarge!.color)),


                  ],
                )),
          ],
        ),
      ),
    );
  }
}
