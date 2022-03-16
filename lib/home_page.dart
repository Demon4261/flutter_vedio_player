import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
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
            ],
          )),
    );
  }
}
