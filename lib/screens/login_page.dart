import 'package:flutter/material.dart';
import 'package:flutter_vedio_player/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/poster_2.png.png"),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                width: 270,
                decoration: BoxDecoration(
                    color: const Color(0xFFb7bce8),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.person),
                      hintText: "Your Email"),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                width: 270,
                decoration: BoxDecoration(
                    color: const Color(0xFFb7bce8),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: "Password"),
                ),
              ),
              TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    "Don't have an account ?",
                    style: TextStyle(color: Colors.black),
                  )),
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
                            return const HomePage();
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
                        backgroundColor: Color(0xff0f17ad).withOpacity(0.6),
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 100))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
