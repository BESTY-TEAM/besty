import 'package:besty/models/chat_messages.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TextMessage extends StatefulWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;
  //bool isExpanded = false;
  @override
  State<TextMessage> createState() => _TextMessageState();
}

class _TextMessageState extends State<TextMessage> {
  final GlobalKey _textKey = GlobalKey();
  int _lineCount = 10;
  bool isExpanded = false;


   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      countTextLines();
    });
  }

  void countTextLines() {
    final RenderBox renderBox = _textKey.currentContext!.findRenderObject() as RenderBox;
    final double lineHeight = renderBox.size.height / _lineCount.toDouble();
    final int newLineCount = (renderBox.size.height / lineHeight).ceil();
    
    setState(() {
      _lineCount = newLineCount;
    });

    print('Number of lines: $_lineCount');
  }

  radius(double value) {
    return Radius.circular(value);
  }

  void expand(){
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Flexible(
        child: Container(
          constraints: BoxConstraints( 
            minHeight: 50
          ),
          margin: EdgeInsets.only(left: widget.message!.isSender ? kDefaultPadding * 4 : 0, right: widget.message!.isSender ? 0 : kDefaultPadding * 4),
          //padding: const EdgeInsets.only(left: kDefaultPadding * 0.8, top: kDefaultPadding / 2.5, right: kDefaultPadding * 0.75, bottom: kDefaultPadding / 2.5,),
          padding: const EdgeInsets.only(left: kDefaultPadding , top: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding,),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(widget.message!.isSender ? 0.9 : 0.1),
                //color: kPrimaryColor.withOpacity(widget.message!.isSender ? 0.95 : 0.1),
                borderRadius: BorderRadius.only(
                      bottomLeft: radius(10),
                      bottomRight: radius(10),
                      topRight: widget.message!.isSender ? radius(0) : radius(10),
                      topLeft:  radius(10) //: radius(0)
                ),
                gradient: widget.message!.isSender?  LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topLeft,
                          // radius: 10,
                          colors: [
                              kPrimaryColor,
                               kSecondaryColor
                            ]) : null,    
              ),
              //
                //child: Expanded(
                  //flex: 5,
                  child: ExpandablePanel(
                    controller: ExpandableController(),
                    collapsed: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.message!.text,
                          key: _textKey ,
                          //maxLines: _lineCount,
                          //overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                              color: widget.message!.isSender ? Colors.white : null,
                          ),
                          /*style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                              fontWeight: FontWeight.w400
                          )*/
                          //maxLines: 10,
                          /* style: TextStyle(
                            color: widget.message!.isSender
                                ? Colors.white
                                : Theme.of(context).textTheme.bodyLarge!.color,
                          ),*/
                        ),
                        InkWell(
                          onTap: expand,
                          child: Text(
                            "Voir plus",
                            style: TextStyle(
                              color: widget.message!.isSender ? kPrimaryColor : kContentColorDarkTheme
                            ),
                          ),
                        )
                      ],
                    ),
                    expanded: SelectableText(
                      widget.message!.text,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                          color: widget.message!.isSender ? Colors.white : null,
                      ),
                    )
                  ),
                //),
              //),
               ),
      );
  }
}
