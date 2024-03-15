import 'package:dentsu_quotes/feature_auth/presentation/components/login_text_field_section.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  bool keepMeLoggedIn = false;

  @override
  void initState() {
    super.initState();

    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Theme.of(context).primaryColor,
          systemNavigationBarIconBrightness: Brightness.light),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            color: Colors.transparent,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 50),
                  //  logo
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //  logo
                      SvgPicture.asset('assets/images/logo.svg',
                          width: 65, height: 65),

                      const SizedBox(height: 32),

                      Text('Welcome to Dentsu LMS',
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .fontSize,
                              fontWeight: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .fontWeight,
                              color: textWhite900)),

                      const SizedBox(height: 16),

                      Text(
                        "A tool that leverage's the power of data and artificial intelligence to drive digital transformation at scale",
                        style: TextStyle(
                            fontSize:
                                Theme.of(context).textTheme.bodyLarge!.fontSize,
                            fontWeight: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .fontWeight,
                            color: textWhite500),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  //  login textfields
                  Column(
                    children: [
                      LoginTextFieldSection(
                          controller: _usernameController,
                          sectionTitle: 'Username',
                          hintText: 'Enter your email or Username'),
                      const SizedBox(height: 16),
                      LoginTextFieldSection(
                        controller: _usernameController,
                        sectionTitle: 'Password',
                        hintText: 'Enter your Password',
                        isObscured: true,
                      ),
                      const SizedBox(height: 16),
                      //  keep me logged in checkbox
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                keepMeLoggedIn = !keepMeLoggedIn;
                              });
                            },
                            child: SvgPicture.asset(
                              keepMeLoggedIn
                                  ? 'assets/images/checked.svg'
                                  : 'assets/images/unchecked.svg',
                              width: 24,
                              height: 24,
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).primaryColorDark,
                                  BlendMode.srcIn),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text('Keep me logged in',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .fontSize,
                                  fontWeight: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .fontWeight,
                                  color: textWhite700))
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 50),

                  //  login button
                  FilledButton(
                      onPressed: () {},
                      style: FilledButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColorDark,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 15),
                          surfaceTintColor: Theme.of(context).primaryColorDark,
                          minimumSize: Size.fromHeight(32)),
                      child: Text('Log In',
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .fontSize,
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .color)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
