import 'package:besty/constants.dart';
import 'package:besty/models/Forum_group.dart';
import 'package:besty/screens/forum/components/forum_card.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  
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
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ForumCard(
              chat: chatsData[index], press: () {  },
              /*press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MessagesScreen(),
                ),
              ),*/
            ),
          ),
        ),
      ],
    );
  }
}
