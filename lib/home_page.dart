import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
          padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Training",
                    style: TextStyle(
                        color: color.AppColor.homePageTitle,
                        fontWeight: FontWeight.w700,
                        fontSize: 27),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    color: color.AppColor.homePageIcons,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Icon(
                    Icons.calendar_today_outlined,
                    color: color.AppColor.homePageIcons,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: color.AppColor.homePageIcons,
                    size: 20,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "your program",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: color.AppColor.homePageSubtitle,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageDetail,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: color.AppColor.homePageIcons,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          color.AppColor.gradientFirst.withOpacity(0.8),
                          color.AppColor.gradientSecond.withOpacity(0.9),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(80),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 10),
                          color: color.AppColor.gradientSecond.withOpacity(0.2),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Next workout",
                          style: TextStyle(
                              fontSize: 15,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Legs Toning",
                          style: TextStyle(
                              fontSize: 25,
                              color: color.AppColor.homePageContainerTextBig),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "and Glutes Workout",
                          style: TextStyle(
                              fontSize: 25,
                              // fontWeight: FontWeight.bold,
                              color: color.AppColor.homePageContainerTextBig),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  size: 20,
                                  color:
                                      color.AppColor.homePageContainerTextSmall,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text("60 min",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color.AppColor
                                            .homePageContainerTextSmall)),
                              ],
                            ),
                            Expanded(child: Container()),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 20,
                                      offset: const Offset(4, 8),
                                      color: color.AppColor.gradientFirst)
                                ],
                              ),
                              child: Icon(
                                Icons.play_circle_fill,
                                color: color.AppColor.homePageContainerTextBig,
                                size: 60,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              const SizedBox(
                height: 5,
              ),
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 20),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/card.jpg"),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                          offset: const Offset(8, 10),
                          blurRadius: 20.0,
                        ),
                        BoxShadow(
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                          offset: const Offset(-1, -5),
                          blurRadius: 10,
                        )
                      ]),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 135,
                  margin: const EdgeInsets.only(bottom: 30, right: 180),
                  decoration: BoxDecoration(
                    // color: Colors.redAccent.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/figure.png"),
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  // color: Colors.redAccent.withOpacity(0.3),
                  margin: const EdgeInsets.only(top: 43, bottom: 30, left: 133),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You are doing great",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Keep it up\n",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: color.AppColor.homePagePlanColor),
                              children: const [
                            TextSpan(text: "stick to your plan")
                          ]))
                    ],
                  ),
                )
              ]),
              Row(
                children: [
                  Text(
                    "Area of focus",
                    style: TextStyle(
                        color: color.AppColor.homePageTitle,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          )),
    );
  }
}
