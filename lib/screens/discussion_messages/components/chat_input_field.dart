import 'package:flutter/material.dart';

import '../../../constants.dart';


class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatInputField> {
  bool isEmptyTextField = false;
  String messageText = ''; // État pour stocker le texte du message
  bool isSendButtonVisible = false; // État pour afficher ou masquer le bouton d'envoi
  bool isMicButtonVisible = true; // État pour afficher ou masquer le bouton du microphone

  TextEditingController messageController = TextEditingController();


  void _handleMessageChange(String text) {
    setState(() {
      messageText = text;
      isSendButtonVisible = text.isNotEmpty; // Afficher le bouton d'envoi si le texte n'est pas vide
      isMicButtonVisible = text.isEmpty; // Afficher le bouton du microphone si le texte est vide
    });
  }

  void _sendMessage() {
    // Logique pour envoyer le message ici
    print('Message envoyé : $messageText');
  }

  void _startVoiceRecording() {
    // Logique pour démarrer l'enregistrement vocal ici
    print('Enregistrement vocal démarré');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding / 2,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme
            .of(context)
            .scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 32,
            color: const Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            //const Icon(Icons.mic, color: kPrimaryColor),
            //const SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.75,
                ),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_very_satisfied_outlined,
                      color: Theme
                          .of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.64),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Expanded(
                      child: TextField(
                        onChanged: _handleMessageChange,
                        controller: messageController,
                        //expands: true,
                        minLines: 1,
                        maxLines: 2,
                        //showCursor: false,
                        decoration: const InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isMicButtonVisible,
                      child: Row(
                        children: [
                          Icon(
                            Icons.attach_file,
                            color: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge!
                                .color!
                                .withOpacity(0.64),
                          ),
                          const SizedBox(width: kDefaultPadding / 4),
                          Icon(
                            Icons.camera_alt,
                            color: Theme
                                .of(context)
                                .textTheme
                                .bodyLarge!
                                .color!
                                .withOpacity(0.64),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
              child: Container(
                  width: 45,
                  height: 45,
                  decoration:  BoxDecoration(
                    color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(kDefaultPadding * 05)
                  ),
                    child:
                  isMicButtonVisible ?
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.mic,
                        size: 25,
                        color: kContentColorDarkTheme
                    ),
                  ) : IconButton(
                    icon: const Icon(
                        Icons.send,
                        size: 25,
                        color: kContentColorDarkTheme,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}