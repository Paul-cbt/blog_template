import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/shared/theme.dart';

class SubTitleBuilder extends StatefulWidget {
  const SubTitleBuilder({super.key});

  @override
  State<SubTitleBuilder> createState() => _SubTitleBuilderState();
}

class _SubTitleBuilderState extends State<SubTitleBuilder> {
  List<String> adjectfis =
      'The Best Blog/Most usefull Blog/Most interesting Blog/The free Blog'
          .split('/');

  int _currentPage = 999;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 999,
  );
  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 2000), (timer) {
      _currentPage++;
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 200,
          height: 30,
          child: PageView.builder(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Text(
              adjectfis[index % adjectfis.length],
              style: TextStyle(
                  color: textColor, fontFamily: 'sourceCode', fontSize: 15),
              textAlign: TextAlign.center,
            ),
            scrollDirection: Axis.vertical,
          ),
        ),
      ],
    );
  }
}
