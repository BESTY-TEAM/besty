import 'package:besty/models/Forum_group.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key, required this.chat}) : super(key: key);
  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

 /* AppBar buidAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      //backgroundColor: const Color(0xFFFFFFFF),
      title: const Row(
        children: [
          BackButton(),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/user_7.png"),
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tizi Bienvenus",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: const [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: null
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: null
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }*/
  AppBar buildAppBar(BuildContext context) {
    return AppBar(

      toolbarHeight: 50,
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFFFFFF),
      /*leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.groups,
            color: kContentColorDarkTheme,
          ),
        ),
      ],*/
      flexibleSpace: Stack(
        children: [
          //Expanded(
          //child:
          Image.asset(
            chat.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width,
            //height: 800,
            fit: BoxFit.cover,
          ),
          //),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 163,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(-0.49, 0.87),
                  end: const Alignment(0.49, -0.87),
                  colors: [
                    kSecondaryColor.withOpacity(0.2),
                    const Color(0x26FF6EAB)],
                ),
              ),
            ),
          )
        ],
      ),
      title: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: kContentColorDarkTheme,
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                      chat.name,
                      //textAlign: TextAlign.left,
                      style: Theme.of(context as BuildContext)
                          .textTheme
                          .headline5!
                          .copyWith(
                        color: kContentColorDarkTheme,
                        fontWeight: FontWeight.w500,
                        fontSize: 20
                      )
                    ),
                ),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(
                    Icons.groups,
                    color: kContentColorDarkTheme,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
