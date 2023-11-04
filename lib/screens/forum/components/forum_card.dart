import 'package:besty/models/Forum_group.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({
    Key? key,
    required this.chat,
    required this.press,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75, vertical: kDefaultPadding * 0.5),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(chat.image),
                ),
                if (chat.isActive)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            width: 3),
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      chat.name,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2 , vertical: kDefaultPadding / 3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                gradient: LinearGradient(
              begin: const Alignment(-0.9, -0.87),
              end:  const Alignment(2, 0.87),
              colors: [
                kSecondaryColor.withOpacity(0.9), kPrimaryColor],
            ),
              ),
              child: const Text(
                "Rejoindre",
                style: TextStyle(
                  color: kContentColorDarkTheme,
                  fontSize: 12,
                ),
              ),
            )
            /*
            Opacity(
              opacity: 0.64,
              child: Text(chat.time),
            ),
            */
          ],
        ),
      ),
    );
  }
}
