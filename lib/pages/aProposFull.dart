import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/shared/constants.dart';
import 'package:BlogTemplate/shared/theme.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class AProposFull extends StatefulWidget {
  const AProposFull({
    super.key,
  });

  @override
  State<AProposFull> createState() => _AProposFullState();
}

class _AProposFullState extends State<AProposFull> {
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
                'assets/napo.png',
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
              'Le Pourquoi',
              style: TextStyle(
                  color: textColor, fontFamily: 'secular', fontSize: 40),
              textAlign: TextAlign.center,
            ),
            Text(
              'P. Caubet',
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
              child: Text(
                lorem(paragraphs: 5),
                style: TextStyle(
                    color: secondarytextColor,
                    fontFamily: 'sourceCode',
                    fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
