import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(32),
          reverse: true,
          child: Column(
            children: [
              const Text(
                "SIGHUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset("assets/poster_2.png.png"),
              const SizedBox(
                height: 30,
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
                      hintText: "Your Name"),
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
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.person),
                      hintText: "Your Password"),
                ),
              ),
              TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    "Already have an account ?",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                height: 10,
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
                        backgroundColor:
                            const Color(0xFF6d8dea).withOpacity(0.7),
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 100))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
