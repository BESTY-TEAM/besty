import 'package:besty/constants/constants.dart';
import 'package:besty/models/Forum_group.dart';
import 'package:besty/screens/discussion_messages/message_screen.dart';
import 'package:besty/screens/forum/components/forum_card.dart';
import 'package:flutter/material.dart';


class ChatForumScreen extends StatelessWidget {
  const ChatForumScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, 0),
        ),
        Expanded(
          child: ListView.builder(
            reverse: false,
            primary: false,
            //shrinkWrap: true,
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ForumCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessagesScreen(chat: chatsData[index]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
