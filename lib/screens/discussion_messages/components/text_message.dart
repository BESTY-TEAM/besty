import 'package:besty/models/chat_messages.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return
      Flexible(
        child: Container(
          constraints: BoxConstraints(
            minHeight: kDefaultPadding * 2,
            maxHeight: MediaQuery.of(context).size.height / 2,
            minWidth: kDefaultPadding * 2,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          margin: EdgeInsets.only(left: message!.isSender ? kDefaultPadding * 4 : 0, right: message!.isSender ? 0 : kDefaultPadding * 4),
          padding: const EdgeInsets.only(left: kDefaultPadding * 0.8, top: kDefaultPadding / 2.5, right: kDefaultPadding * 0.75, bottom: kDefaultPadding / 2.5,
              ),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(message!.isSender ? 0.1 : 0.1),
                //color: kPrimaryColor.withOpacity(message!.isSender ? 0.95 : 0.1),
                borderRadius: BorderRadius.circular(kDefaultPadding / 3),
              ),
              //
                //child: Expanded(
                  //flex: 5,
                  child: SelectableText(
                    message!.text,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400
                    ),
                    /*style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(
                        fontWeight: FontWeight.w400
                    )*/
                    //maxLines: 10,
                    /* style: TextStyle(
                      color: message!.isSender
                          ? Colors.white
                          : Theme.of(context).textTheme.bodyLarge!.color,
                    ),*/
                  ),
                //),
              //),
               ),
      );
  }
}
