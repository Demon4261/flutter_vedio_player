import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
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

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) => {
              info = json.decode(value),
            });
  }

   List info = [];

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
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: color.AppColor.secondPageIconColor,
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
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
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
              ],
            ),
          ))
        ],
      ),
    ));
  }
}
