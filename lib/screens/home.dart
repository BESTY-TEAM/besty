import 'package:besty/constants.dart';
import 'package:besty/screens/flow_track/flow_track.dart';
import 'package:besty/screens/forum/forum.dart';
import 'package:besty/screens/pregnancy_track/pregant.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<HomeScreen> {
  int CurrentIndex = 0;

  List pages = [
      const FlowTrackScreen(),
      const PregnantScreen(),
      const ForumScreen(),
      const PregnantScreen(),
    ];

    void onTape(int index){
      setState(() {
        CurrentIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: buildBottomNavigationBar(),
        body: pages[CurrentIndex],
      );
    }
    BottomNavigationBar buildBottomNavigationBar() {
      return BottomNavigationBar(
        elevation: 2,
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (value) {
          setState(() {
            CurrentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.article), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: "Forum"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            /*CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("assets/images/user_7.png"),
            ),*/
            label: "Profile",
          ),
        ],
      );
    }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("Messages"),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
