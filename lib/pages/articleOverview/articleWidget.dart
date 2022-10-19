import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:BlogTemplate/pages/articleOverview/articlePage.dart';
import 'package:BlogTemplate/shared/theme.dart';

class ArticleWidget extends StatefulWidget {
  final String assetPath;
  final String title;
  final String author;
  final double titleOffset;
  final String subtitle;
  final bool isClickable;
  final Color? titleColor;
  const ArticleWidget(
      {super.key,
      required this.assetPath,
      required this.title,
      this.titleColor,
      required this.titleOffset,
      this.isClickable = false,
      required this.author,
      required this.subtitle});

  @override
  State<ArticleWidget> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  double margin = 5;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
          if (!widget.isClickable) {
            return;
          }
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 200,
                  minHeight: MediaQuery.of(context).size.height - 100,
                  minWidth: MediaQuery.of(context).size.width - 200,
                  maxHeight: MediaQuery.of(context).size.height - 100),
              context: context,
              builder: (context) => ArticelPage(
                    assetPath: widget.assetPath,
                    author: widget.author,
                    subtitle: widget.subtitle,
                    title: widget.title,
                    titleOffset: widget.titleOffset,
                  ));
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          margin: EdgeInsets.all(margin),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: lightGrey.withOpacity(0.3),
                blurRadius: 3,
                spreadRadius: 1,
                offset: Offset(0, 2))
          ]),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: widget.isClickable ? 'articlePhoto' : widget.title,
                child: Image.network(
                  "assets/${widget.assetPath}",
                  // height: height,
                  // width: width,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3 - 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        8,
                        widget.titleOffset > 0 ? widget.titleOffset : 8,
                        8,
                        widget.titleOffset < 0 ? -widget.titleOffset : 8),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                          color: widget.titleColor ?? textColor,
                          fontFamily: 'secular',
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
