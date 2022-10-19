import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:BlogTemplate/pages/articleOverview/articleOverviewPage.dart';
import 'package:BlogTemplate/pages/contactPage/aProposPage.dart';
import 'package:BlogTemplate/pages/contactPage/contactPage.dart';
import 'package:BlogTemplate/pages/home/subTitleBuilder.dart';
import 'package:BlogTemplate/pages/verticalNavBar.dart';
import 'package:BlogTemplate/shared/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController mainPageController = PageController(initialPage: 0);
  int page = 0;
  @override
  Widget build(BuildContext context) {
    // precacheImage(AssetImage('sigma.jpeg'), context);
    // precacheImage(AssetImage('adrien.jpg'), context);
    // precacheImage(AssetImage('alpha.jpg'), context);
    // precacheImage(AssetImage('court.jpg'), context);
    // precacheImage(AssetImage('car.jpeg'), context);
    return Scaffold(
      body: MediaQuery.of(context).size.width < 1000
          ? Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: darkGrey,
              ),
              child: Center(
                child: Text(
                  'Website not adapted for mobile',
                  style: TextStyle(
                      color: textColor, fontFamily: 'secular', fontSize: 20),
                ),
              ),
            )
          : Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: darkGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    PageView(
                      controller: mainPageController,
                      scrollDirection: Axis.vertical,
                      onPageChanged: (value) {
                        setState(() {
                          page = value;
                        });
                      },
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Text(
                                  'THE BLOG',
                                  style: TextStyle(
                                      color: textColor,
                                      fontFamily: 'secular',
                                      fontSize: 100),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                SubTitleBuilder()
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: darkGrey,
                          child: ArticleOverviewPage(),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: darkGrey,
                          child: AProposPage(),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: darkGrey,
                          child: ContactPage(),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: InkWell(
                        onTap: () {
                          mainPageController.animateToPage(0,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut);
                        },
                        child: Text(
                          'LFI',
                          style: TextStyle(
                              color: textColor,
                              fontFamily: 'secular',
                              fontSize: 40),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              'assets/insta.svg',
                              color: textColor,
                              height: 30,
                            ),
                            SvgPicture.asset(
                              'assets/twitter.svg',
                              color: textColor,
                              height: 30,
                            ),
                            SvgPicture.asset(
                              'assets/youtube.svg',
                              color: textColor,
                              height: 30,
                            ),
                          ],
                        )),
                    Positioned(
                        right: 20,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  mainPageController.animateToPage(2,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.easeInOut);
                                },
                                child: Text(
                                  'À propos',
                                  style: TextStyle(
                                      color: textColor,
                                      fontFamily: 'sourceCode',
                                      fontSize: 18),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                                child: Text(
                                  '|',
                                  style: TextStyle(
                                      color: textColor,
                                      fontFamily: 'sourceCode',
                                      fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  mainPageController.animateToPage(3,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.easeInOut);
                                },
                                child: Text(
                                  'Contact',
                                  style: TextStyle(
                                      color: textColor,
                                      fontFamily: 'sourceCode',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        bottom: 10,
                        right: 0,
                        child: VerticalNavBar(
                          controller: mainPageController,
                          page: page,
                        ))
                  ],
                ),
              ),
            ),
    );
  }
}
