import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/pages/articleOverview/articleWidget.dart';
import 'package:BlogTemplate/shared/theme.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class ArticleOverviewPage extends StatefulWidget {
  const ArticleOverviewPage({super.key});

  @override
  State<ArticleOverviewPage> createState() => _ArticleOverviewPageState();
}

class _ArticleOverviewPageState extends State<ArticleOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CarouselSlider(
              items: const [
                ArticleWidget(
                    assetPath: 'sigma.jpeg',
                    title: 'Article title 1',
                    author: 'A. Puiseux',
                    titleOffset: 120,
                    isClickable: true,
                    subtitle: ''),
                ArticleWidget(
                    assetPath: 'image5.jpeg',
                    title: 'Article title 2',
                    author: 'P. Caubet',
                    titleOffset: 100,
                    subtitle: ''),
                ArticleWidget(
                    assetPath: 'alpha.jpg',
                    title: 'Article title 3',
                    author: 'A. Puiseux',
                    titleOffset: 100,
                    subtitle: ''),
                ArticleWidget(
                    assetPath: 'court.jpg',
                    title: 'Article title 4',
                    author: 'A. Puiseux',
                    titleOffset: 100,
                    subtitle: ''),
                ArticleWidget(
                    assetPath: 'lambo.jpeg',
                    title: 'Article title 5',
                    author: 'A. Puiseux',
                    titleOffset: 100,
                    titleColor: Colors.white,
                    subtitle: '')
              ],
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height / 2 + 40,
                  viewportFraction: 0.3,
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayInterval: const Duration(seconds: 10),
                  enlargeCenterPage: true),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 + 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Articles',
                  style: TextStyle(
                      color: textColor, fontFamily: 'secular', fontSize: 100),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Quality Articles, twice a week',
                  style: TextStyle(
                      color: secondarytextColor,
                      fontFamily: 'sourceCode',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                AnimatedButton(
                  animatedOn: AnimatedOn.onHover,
                  onPress: () {},
                  onChanges: (change) {},
                  height: 55,
                  width: 240,
                  text: 'See all articles',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  textStyle: TextStyle(
                      color: textColor, fontFamily: 'sourceCode', fontSize: 14),
                  backgroundColor: lightGrey,
                  selectedBackgroundColor: textColor,
                  borderColor: textColor,
                  borderWidth: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
