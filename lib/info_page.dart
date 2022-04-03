import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vedio_player/home_page.dart';
import 'package:get/get.dart';
import 'colors.dart' as color;

class VedioInfo extends StatefulWidget {
  const VedioInfo({Key? key}) : super(key: key);

  @override
  State<VedioInfo> createState() => _VedioInfoState();
}

class _VedioInfoState extends State<VedioInfo> {
  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) => {
              vedioInfo = json.decode(value),
            });
  }

  List vedioInfo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          color.AppColor.gradientFirst.withOpacity(0.9),
          color.AppColor.gradientSecond,
        ],
        begin: const FractionalOffset(0.0, 0.4),
        end: Alignment.topRight,
      )),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => HomePage());
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: color.AppColor.secondPageIconColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.info_outline,
                      size: 20,
                      color: color.AppColor.secondPageIconColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                      fontSize: 25, color: color.AppColor.secondPageTitleColor),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "and Glutes Workout",
                  style: TextStyle(
                      fontSize: 25,
                      // fontWeight: FontWeight.bold,
                      color: color.AppColor.secondPageTitleColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color
                                  .AppColor.secondPageContainerGradient1stColor,
                              color
                                  .AppColor.secondPageContainerGradient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            "68 min",
                            style: TextStyle(
                                fontSize: 17,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 215,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              color
                                  .AppColor.secondPageContainerGradient1stColor,
                              color
                                  .AppColor.secondPageContainerGradient2ndColor,
                            ],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            size: 20,
                            color: color.AppColor.secondPageIconColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "Resistent band , kettebell",
                            style: TextStyle(
                                fontSize: 16,
                                color: color.AppColor.secondPageIconColor),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(70))),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Circuit 1: Legs Toning",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color.AppColor.circuitsColor),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.loop,
                      size: 30,
                      color: color.AppColor.loopColor,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "3 sets",
                      style: TextStyle(
                          color: color.AppColor.setsColor, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: vedioInfo.length,
                        itemBuilder: (_, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 135,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 72,
                                        width: 72,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              vedioInfo[index]["thumbnail"],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            vedioInfo[index]["title"],
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            vedioInfo[index]["time"],
                                            style: TextStyle(
                                                color: color.AppColor.setsColor,
                                                fontSize: 13),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFeaeefc),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                            child: Text(
                                          "15s rest",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.lightBlue
                                                  .withOpacity(0.5)),
                                        )),
                                      ),
                                      Text(
                                        "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",
                                        style: TextStyle(
                                            color: Colors.lightBlue
                                                .withOpacity(0.3)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }))
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
