import 'package:dentsu_quotes/core/presentation/components/my_lottie.dart';
import 'package:flutter/material.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({super.key});

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MyLottie(lottie: 'assets/images/json/no_wifi.json', width: 300, height: 300),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Oops...', style: Theme.of(context).textTheme.titleMedium,),
                  const SizedBox(height: 16),
                  Text('Please connect to the internet and try again.', style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,),
                ],
              ),
            ],
          )),
    );
  }
}
