import 'dart:ui';

import 'package:airplane_ticket_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const WayColumn(
                cityShort: 'ZG',
                cityFullName: 'Zagreb',
                crossAalignment: CrossAxisAlignment.start,
                date: 'Thu, May 02',
                time: '20:50',
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    'assets/photos/air-plane.svg',
                    height: 70,
                    width: 70,
                    color: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: AppConsts.appOrangeColor,
                  ),
                  //const SizedBox(height: 5),
                ],
              ),
              const WayColumn(
                cityShort: 'SA',
                cityFullName: 'Sarajevo',
                crossAalignment: CrossAxisAlignment.end,
                date: 'Thu, May 02',
                time: '22:00',
              ),
            ],
          ),
        ),
        const SizedBox(height: 60),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Passenger',
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'SUKIJAN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Seat',
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '24A',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Gate',
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '4F',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Class',
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Bussines',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Boarding Time',
                      style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '21:45, May 02',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Flight',
              style: TextStyle(
                color: Colors.white54,
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              'GA 250',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        const Spacer(),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: AppConsts.appOrangeColor,
            backgroundImage: AssetImage('assets/photos/logo.jpg'),
          ),
          title: Text(
            'COMPANY NAME',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            'An airline is a company that provides air transport services for traveling.',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class WayColumn extends StatelessWidget {
  final String cityShort;
  final String cityFullName;
  final String date;
  final String time;
  final CrossAxisAlignment crossAalignment;

  const WayColumn({
    Key? key,
    required this.cityShort,
    required this.cityFullName,
    required this.crossAalignment,
    required this.date,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 5,
        ),
        const SizedBox(height: 10),
        Column(
          crossAxisAlignment: crossAalignment,
          children: [
            Text(
              cityShort,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Text(
              cityFullName,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              date,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                color: Colors.white54,
                // fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
