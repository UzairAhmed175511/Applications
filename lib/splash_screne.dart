import 'package:flutter/material.dart';
import 'package:food_delivery/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScrene = SplashServices();
  @override
  void initState() {
    super.initState();
    splashScrene.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCCB4D), // پس منظر کا رنگ (Yellow)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            Image.asset(
              "images/logo.webp", // اپنی امیج کا راستہ دیں
              height: 150,
            ),
            const SizedBox(height: 10),

            // App Name (YUMQUICK)
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "YUM",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: "QUICK",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// یہ ہوم اسکرین کے لیے Placeholder ہے
