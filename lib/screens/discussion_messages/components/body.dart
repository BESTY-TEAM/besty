import 'package:besty/models/chat_messages.dart';
import 'package:flutter/material.dart';
import 'chat_input_field.dart';
import 'message.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    this.message,
  }) : super(key: key);
  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            //message!.isSender ? kDefaultPadding : kDefaultPadding
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0 ),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: demeChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}
