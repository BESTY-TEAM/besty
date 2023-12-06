enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final ChatMessageType messageType;
  final MessageStatus messageStatus;
  final bool isSender;

  ChatMessage({
    this.text = '',
    required this.messageType,
    required this.messageStatus,
    required this.isSender,
  });
}

List demeChatMessages = [
  ChatMessage(
    text: "Salut Donfack, comment tu vas ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Salut Tizi, ça va et toi ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),

  ChatMessage(
    text: "ça va Bro.",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Oui je suis à l'école. Tu veux came ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Oui je suis à l'école. Tu veux came ?",
    messageType: ChatMessageType.audio,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Voici la vidéo que que tu m'as démandé là",
    messageType: ChatMessageType.video,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Merci",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: true,
  ),
  ChatMessage(
    text: "Tu yamo Flutter ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_sent,
    isSender: true,
  ),
  ChatMessage(
    text: "Oui et toi ça avance avec Java ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.viewed,
    isSender: false,
  ),
  ChatMessage(
    text: "Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu.Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu.Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu.Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu.Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu.Un peu. Dit tu peux venir les week-ends histoire de prendre un verre ensembleUn peu. Dit tu peux venir les week-ends histoire de prendre un verre ensemble ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
  ChatMessage(
    text: "Apporte moi aussi les tutos en Flutter",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: true,
  ),
  ChatMessage(
    text: "Ok. Tu nous as une bonne bouteille de Tequila ?",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: false,
  ),
  ChatMessage(
    text: "T'inquiète t'auras tes tutos Flutter",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: false,
  ),
  ChatMessage(
    text: "T'inquiète t'auras tes tutos Flutter",
    messageType: ChatMessageType.text,
    messageStatus: MessageStatus.not_view,
    isSender: false,
  ),
];
