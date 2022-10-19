import 'package:BlogTemplate/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/shared/constants.dart';
import 'package:BlogTemplate/shared/theme.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ArticelPage extends StatefulWidget {
  final String assetPath;
  final String title;
  final String author;
  final double titleOffset;
  final String subtitle;
  const ArticelPage(
      {super.key,
      required this.assetPath,
      required this.title,
      required this.titleOffset,
      required this.author,
      required this.subtitle});

  @override
  State<ArticelPage> createState() => _ArticelPageState();
}

class _ArticelPageState extends State<ArticelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: notSolightGrey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'articlePhoto',
              child: Image.network(
                'assets/${widget.assetPath}',
                fit: BoxFit.cover,
                height: 300,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 200,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  color: textColor, fontFamily: 'secular', fontSize: 40),
              textAlign: TextAlign.center,
            ),
            Text(
              widget.author,
              style: TextStyle(
                  color: lightGrey, fontFamily: 'sourceCode', fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width > 1000
                    ? 800
                    : MediaQuery.of(context).size.width - 200,
                child: RichText(
                  text: TextSpan(
                      text: lorem(paragraphs: 3),
                      style: TextStyle(
                          color: secondarytextColor,
                          fontFamily: 'sourceCode',
                          fontSize: 20),
                      children: [
                        TextSpan(
                          text: articleQuote,
                          style: TextStyle(
                              color: textColor,
                              fontFamily: 'sourceCode',
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        TextSpan(
                          text: lorem(paragraphs: 2),
                          style: TextStyle(
                              color: secondarytextColor,
                              fontFamily: 'sourceCode',
                              fontSize: 20),
                        )
                      ]),
                  textAlign: TextAlign.justify,
                )),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
