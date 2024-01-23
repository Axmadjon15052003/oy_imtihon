

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:oy_imtihon/assets/colors.dart';
import 'package:oy_imtihon/assets/icons.dart';
import 'package:oy_imtihon/assets/images.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppImages.background,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: 324,
          // width: (MediaQuery.of(context).size.width / 100) * 85.8,
          margin: EdgeInsets.only(
            top: (MediaQuery.of(context).size.height / 100) * 5.5,
            right: 20,
            left: 20,
            bottom: (MediaQuery.of(context).size.height / 100) * 39.56,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(15.5),
              const Text(
                "22 Jan 2024",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: snowTextColor,
                ),
              ),
              const Gap(11.68),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.cloud),
                  const Gap(31),
                  const Text(
                    "-8 °",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                ],
              ),
              const Gap(11.64),
              const Text(
                "Snowy",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: snowTextColor,
                ),
              ),
              const Gap(3.88),
              const Text(
                "Tashkent, Uzbekistan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: snowTextColor,
                ),
              ),
              const Gap(48.44),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Wind speed:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                  Text(
                    "11.2km/",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                ],
              ),
              const Gap(5.57),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Humidity:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                  Text(
                    "71%",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                ],
              ),
              const Gap(5.57),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cloud:",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                  Text(
                    "11%",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: snowTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
