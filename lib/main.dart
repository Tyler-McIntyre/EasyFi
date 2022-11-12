// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:EasyFi/sign_in_screen.dart';

void main() {
  runApp(const EasyFi());
}

class EasyFi extends StatelessWidget {
  const EasyFi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EasyFi',
      themeMode: ThemeMode.light,
      // Light Theme
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
        ),
        primaryTextTheme: const TextTheme(
          // displayLarge: TextStyle(fontSize: 20, color: Colors.black),
          // displayMedium: TextStyle(fontSize: 20, color: Colors.black),
          // displaySmall: TextStyle(fontSize: 20, color: Colors.black),
          // headlineLarge: TextStyle(fontSize: 20, color: Colors.black),
          // headlineMedium: TextStyle(fontSize: 20, color: Colors.black),
          // headlineSmall: TextStyle(fontSize: 20, color: Colors.black),
          // titleLarge: TextStyle(fontSize: 20, color: Colors.black),
          titleMedium: TextStyle(
            fontSize: 28,
            color: Colors.black,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w500,
          ),
          // titleSmall: TextStyle(fontSize: 20, color: Colors.black),
          // bodyLarge: TextStyle(fontSize: 20, color: Colors.black),
          bodyMedium: TextStyle(fontSize: 25, color: Colors.black),
          bodySmall: TextStyle(fontSize: 24, color: Colors.white),
          // labelLarge: TextStyle(fontSize: 20, color: Colors.black),
          labelSmall: TextStyle(fontSize: 20, color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 23,
              fontFamily: GoogleFonts.lato().fontFamily,
              shadows: <Shadow>[
                const Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 1.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                const Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 1.0,
                  color: Colors.black,
                ),
              ],
            ),
            minimumSize: const Size(
              double.infinity,
              double.infinity,
            ),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
      ),
      // Dark Theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.black,
        ),
        primaryTextTheme: const TextTheme(
            bodyText1: TextStyle(
          fontSize: 25,
        )),
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 23,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
            minimumSize: const Size(
              double.infinity,
              double.infinity,
            ),
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //Banner
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 70,
                      ),
                      children: [
                        TextSpan(
                            text: 'Ea',
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 3.0,
                                  color: Colors.black,
                                ),
                                Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                ),
                              ],
                            )),
                        TextSpan(
                          text: '\$',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 60,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(1.0, 1.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 8.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        TextSpan(
                            text: 'yFi',
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 8.0,
                                  color: Colors.black,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Text(
                    'Simplify Your Future',
                    style: Theme.of(context).primaryTextTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Lottie.asset(
              width: 400,
              height: 375,
              'assets/login_animation.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..repeat();
              },
            ),
            //Sign in & Create Account
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.05,
                child: Column(
                  children: [
                    //Sign in
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SignInScreen(),
                                  ),
                                );
                              },
                              child: const Text('Sign in'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Create Account
                    SizedBox(
                      height: 65,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Create an account'),
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
