import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/pages/aProposFull.dart';
import 'package:BlogTemplate/shared/constants.dart';
import 'package:BlogTemplate/shared/theme.dart';

class AProposPage extends StatefulWidget {
  const AProposPage({super.key});

  @override
  State<AProposPage> createState() => _AProposPageState();
}

class _AProposPageState extends State<AProposPage> {
  double margin = 5;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
        ),
        SizedBox(
          child: Stack(
            fit: StackFit.loose,
            children: [
              Container(
                height: 220,
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
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    Image.asset(
                      'assets/alex.jpeg',
                      height: 200,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        '\tDans le monde fallacieux dans lequel nous vivions, Dr Jacques Louis Morel, expert en sociologie du genre avec plus de 20 ans d’expérience ainsi que, M Isaac White, ex-trader ayant pris une retraite anticipée, se battent dans le but de préserver les droits de l’homme.',
                        style: TextStyle(
                            color: textColor,
                            fontFamily: 'sourceCode',
                            fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    )),
                    Image.asset(
                      'assets/paul.jpg',
                      height: 200,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
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
                      'Qui sommes nous?',
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
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          child: MouseRegion(
            onEnter: (event) {
              setState(() {
                margin = 0;
              });
            },
            onExit: (event) {
              setState(() {
                margin = 5;
              });
            },
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 200,
                        minHeight: MediaQuery.of(context).size.height - 100,
                        minWidth: MediaQuery.of(context).size.width - 200,
                        maxHeight: MediaQuery.of(context).size.height - 100),
                    context: context,
                    builder: (context) => AProposFull());
              },
              child: Stack(
                fit: StackFit.loose,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    height: 320,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(
                        bodyPadding + margin, margin, bodyPadding + margin, 50),
                    decoration:
                        BoxDecoration(color: notSolightGrey, boxShadow: [
                      BoxShadow(
                          color: lightGrey.withOpacity(0.9),
                          offset: Offset(1, 2),
                          spreadRadius: 3,
                          blurRadius: 5),
                    ]),
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'LFI Mâle-Alpha',
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'secular',
                                    fontSize: 30),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '\t Jadis, un Homme était reconnu pour son pouvoir, son charisme, sa richesse et son statut. Les meilleurs, les plus puissants, gouvernaient le monde. Pendant des siècle, les Hommes bâtirent un patrimoine culturel et architectural qui pour une partie persiste encore à ce jour. Cependant...',
                                style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'sourceCode',
                                    fontSize: 14),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: 200,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                      ],
                    ),
                  ),
                  AnimatedContainer(
                    height: 320,
                    width: margin == 0 ? MediaQuery.of(context).size.width : 0,
                    duration: const Duration(milliseconds: 400),
                    margin: EdgeInsets.fromLTRB(
                        bodyPadding + margin, margin, bodyPadding + margin, 50),
                    decoration: BoxDecoration(color: lightGrey),
                    child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 400),
                        child: margin == 0
                            ? Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Lire notre à propos',
                                    style: TextStyle(
                                        color: textColor,
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'sourceCode',
                                        fontSize: 18),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Icon(
                                    Icons.open_in_new,
                                    color: textColor,
                                  )
                                ],
                              )
                            : Container()),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'À propos',
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
          ),
        ),
      ],
    );
  }
}
