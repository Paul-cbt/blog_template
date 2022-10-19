import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/shared/theme.dart';

class VerticalNavBar extends StatefulWidget {
  final int page;
  final PageController controller;
  const VerticalNavBar(
      {super.key, required this.page, required this.controller});

  @override
  State<VerticalNavBar> createState() => _VerticalNavBarState();
}

class _VerticalNavBarState extends State<VerticalNavBar> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    page = widget.page;
    return Container(
      width: 30,
      height: 400,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        InkWell(
          onTap: () {
            widget.controller.animateToPage(0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              'Acceuil',
              style: TextStyle(
                  color: page == 0 ? textColor : lightGrey,
                  fontFamily: 'secular',
                  fontSize: page == 0 ? 15 : 12),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            widget.controller.animateToPage(1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Articles',
                style: TextStyle(
                    color: page == 1 ? textColor : lightGrey,
                    fontFamily: 'secular',
                    fontSize: page == 1 ? 15 : 12)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            widget.controller.animateToPage(2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
          child: RotatedBox(
            quarterTurns: 1,
            child: Text(
              'À propos',
              style: TextStyle(
                  color: page == 2 ? textColor : lightGrey,
                  fontFamily: 'secular',
                  fontSize: page == 2 ? 15 : 12),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            widget.controller.animateToPage(3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
          child: RotatedBox(
            quarterTurns: 1,
            child: Text('Contact',
                style: TextStyle(
                    color: page == 3 ? textColor : lightGrey,
                    fontFamily: 'secular',
                    fontSize: page == 3 ? 15 : 12)),
          ),
        ),
      ]),
    );
  }
}
