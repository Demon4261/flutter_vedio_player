import 'package:flutter/material.dart';
import 'package:flutter_vedio_player/screens/login_page.dart';
import 'package:flutter_vedio_player/screens/signuo_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 180,
            ),
            Image.asset(
              "assets/pngegg.png",
              fit: BoxFit.contain,
              color: const Color(0xff0f17ad),
            ),
            const SizedBox(
              height: 80,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  }),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xff0f17ad).withOpacity(0.6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 100))),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SignUp();
                        },
                      ),
                    );
                  }),
                  child: const Text(
                    "SIGNUP",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6d8dea).withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 100))),
            )
          ],
        )),
      ),
    );
  }
}
