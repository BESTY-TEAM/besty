import 'package:besty/common/ScrollToHide.dart';
import 'package:besty/constants/constants.dart';
import 'package:besty/screens/astuces_conseils/home.dart';
import 'package:besty/screens/flow_track/flow_track.dart';
import 'package:besty/screens/forum/forum.dart';
import 'package:besty/screens/pregnancy_track/pregant.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<HomeScreen> {
  late ScrollController controller;
  int currentIndex = 0;

  List pages = [
      //const PageViewDemo(),
      const HomeEducation(),//controller: controller,),
      const PregnantScreen(),
      const FlowTrackScreen(title: 'Flow Track',),
      const ForumScreen(),
      //const SelectedSeviceScreen(),
      //const ProfileScreen()
    ];

    @override
    void initState(){
      super.initState();
      controller = ScrollController();
    }

    @override
    void dispose (){
      controller.dispose();
      super.dispose();
    }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
          bottomNavigationBar: buildBottomNavigationBar(),
          body: pages[currentIndex],
        );
    }

  SrollToHideWidget buildBottomNavigationBar() {
      return SrollToHideWidget(
        controller: controller,
        child: BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          //fixedColor: kPrimaryColor,
          currentIndex: currentIndex,
          enableFeedback: true,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            setState(() {
              currentIndex = value;
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
        ),
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
