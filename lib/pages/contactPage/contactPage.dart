import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_svg/svg.dart';
import 'package:BlogTemplate/shared/constants.dart';
import 'package:BlogTemplate/shared/theme.dart';
import "package:hovering/hovering.dart";
import 'package:url_launcher/url_launcher_string.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String donateText = '    ' + lorem(paragraphs: 1, words: 35);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        SizedBox(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(bodyPadding, 0, bodyPadding, 50),
                decoration: BoxDecoration(color: notSolightGrey, boxShadow: [
                  BoxShadow(
                      color: lightGrey.withOpacity(0.6),
                      offset: Offset(1, 2),
                      blurRadius: 3)
                ]),
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Question, Suggestions? It\s over here',
                            style: TextStyle(
                                color: textColor,
                                fontFamily: 'secular',
                                fontSize: 30),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          SizedBox(
                            width: 400,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                HoverAnimatedContainer(
                                  hoverMargin: EdgeInsets.all(0),
                                  width: 50,
                                  height: 50,
                                  hoverHeight: 60,
                                  hoverWidth: 60,
                                  hoveraAlignment: Alignment.center,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(5),
                                  child: SvgPicture.asset(
                                    'assets/youtube.svg',
                                    fit: BoxFit.cover,
                                    height: 60,
                                    color: textColor,
                                  ),
                                ),
                                HoverAnimatedContainer(
                                  hoverMargin: EdgeInsets.all(0),
                                  width: 50,
                                  height: 50,
                                  hoverHeight: 60,
                                  hoverWidth: 60,
                                  hoveraAlignment: Alignment.center,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(5),
                                  child: SvgPicture.asset(
                                    'assets/twitter.svg',
                                    fit: BoxFit.cover,
                                    height: 60,
                                    color: textColor,
                                  ),
                                ),
                                HoverAnimatedContainer(
                                  hoverMargin: EdgeInsets.all(0),
                                  width: 50,
                                  height: 50,
                                  hoverHeight: 60,
                                  hoverWidth: 60,
                                  hoveraAlignment: Alignment.center,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(5),
                                  child: SvgPicture.asset(
                                    'assets/insta.svg',
                                    color: textColor,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                HoverAnimatedContainer(
                                  hoverMargin: EdgeInsets.all(0),
                                  width: 50,
                                  height: 50,
                                  hoverHeight: 60,
                                  hoverWidth: 60,
                                  hoveraAlignment: Alignment.center,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(5),
                                  child: SvgPicture.asset(
                                    'assets/email.svg',
                                    color: textColor,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Contact',
                      style: TextStyle(
                          color: textColor,
                          fontFamily: 'secular',
                          fontSize: 70),
                    ),
                  ],
                ),
              ),
              // Text(
              //   'Dans le monde fallacieux dans lequel nous vivions, Dr Jacques Louis Morel, expert en sociologie du genre avec plus de 20 ans d’expérience ainsi que, M Isaac White, ex-trader ayant pris une retraite anticipée, se battent dans le but de préserver les droits de l’homme.',
              //   style: TextStyle(
              //       color: textColor, fontFamily: 'sourceCode', fontSize: 15),
              // )
            ],
          ),
        ),
        SizedBox(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.fromLTRB(bodyPadding, 0, bodyPadding, 30),
                decoration: BoxDecoration(color: notSolightGrey, boxShadow: [
                  BoxShadow(
                      color: lightGrey.withOpacity(0.6),
                      offset: Offset(1, 2),
                      blurRadius: 3)
                ]),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                      Expanded(
                          child: Text(
                        donateText,
                        style: TextStyle(
                            color: textColor,
                            fontFamily: 'sourceCode',
                            fontSize: 18),
                      )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.07,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedButton(
                      animatedOn: AnimatedOn.onHover,
                      onPress: () {},
                      onChanges: (change) {},
                      height: 60,
                      width: 300,
                      text: 'Donate',
                      isReverse: true,
                      selectedTextColor: Colors.black,
                      transitionType: TransitionType.LEFT_TO_RIGHT,
                      textStyle: TextStyle(
                          color: textColor,
                          fontFamily: 'sourceCode',
                          fontSize: 22),
                      backgroundColor: lightGrey,
                      selectedBackgroundColor: textColor,
                      borderColor: textColor,
                      borderWidth: 1,
                    ),
                  ],
                ),
              ),
              // Text(
              //   'Dans le monde fallacieux dans lequel nous vivions, Dr Jacques Louis Morel, expert en sociologie du genre avec plus de 20 ans d’expérience ainsi que, M Isaac White, ex-trader ayant pris une retraite anticipée, se battent dans le but de préserver les droits de l’homme.',
              //   style: TextStyle(
              //       color: textColor, fontFamily: 'sourceCode', fontSize: 15),
              // )
            ],
          ),
        ),
        Spacer(),
        InkWell(
            onTap: () {
              launchUrlString('https://github.com/Paul-cbt/blog_template');
            },
            child: Text(
              'Access source code',
              style: TextStyle(
                  color: textColor, fontFamily: 'sourceCode', fontSize: 14),
            )),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
