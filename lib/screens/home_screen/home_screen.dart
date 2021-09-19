import 'package:airplane_ticket_app/constants.dart';
import 'package:airplane_ticket_app/screens/home_screen/components/filter_on_bacground.dart';
import 'package:airplane_ticket_app/screens/home_screen/components/home_content.dart';
import 'package:airplane_ticket_app/screens/home_screen/components/ticket_info_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/clipper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppConsts.appBlueColor,
      body: Stack(
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/photos/bacground1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const FilterOnBackground(),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: HomeContent(),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: _isCollapsed ? -120 : size.width - 65,
            child: Stack(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: size.height,
                    width: size.width + 90,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        AppConsts.appOrangeColor,
                        AppConsts.appDeepOrange,
                      ],
                    )),
                    child: const TicketInfo(),
                  ),
                ),
                Positioned(
                  left: 8,
                  top: size.height * 0.65 + 37,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _isCollapsed = !_isCollapsed;
                    }),
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppConsts.appBlueColor,
                        boxShadow: const [
                          BoxShadow(
                            color: AppConsts.appDarkBlueColor,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/photos/qr.svg',
                          color: Colors.white,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 7,
                  top: size.height * 0.65 + 37,
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _isCollapsed = !_isCollapsed;
                    }),
                    child: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppConsts.appOrangeColor,
                        boxShadow: const [
                          BoxShadow(
                            color: AppConsts.appDarkBlueColor,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/photos/air-plane.svg',
                          color: Colors.white,
                          height: 26,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
