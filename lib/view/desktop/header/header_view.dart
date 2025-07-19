import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sameerhux/view/desktop/header/header_view.controller.dart';
import 'package:sameerhux/view/theme/colors.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HeaderViewController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/Logo.svg',
                height: 40,
                width: 180,
              ),
            ],
          ),

          // Navigation Items
          Row(
            children: const [
              _NavItem(title: 'HOME'),
              _NavItem(title: 'PROJECTS'),
              _NavItem(title: 'ABOUT US'),
              _NavItem(title: 'SERVICES'),
              _NavItem(title: 'CONTACT US'),
            ],
          ),

          // HIRE ME Button with hover effect
          Obx(() {
            return MouseRegion(
              onEnter: (_) => controller.isHovered.value = true,
              onExit: (_) => controller.isHovered.value = false,
              child: SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.isHovered.value ? electricblue : blue,
                    elevation: 0, // remove shadow
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 38,
                      vertical: 18,
                    ),
                  ).copyWith(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HIRE ME',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: white,
                        ),
                      ),

                      Image.asset(
                        'assets/images/arrow.png',
                        width: 42,
                        height: 26,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String title;

  const _NavItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: black,
          ),
        ),
      ),
    );
  }
}
