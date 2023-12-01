import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController _pageController = PageController();
  int selectedPage = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [buildPageView(), buildBottomNav()]),
    );
  }

  Widget buildPageView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: PageView(
        controller: _pageController,
        children: [
          Container( color: Colors.white, height: 200,),
          Container( color: Colors.blue, height: 200),
          Container( color: Colors.yellowAccent,height: 200),
        ],
        onPageChanged: (index) {
          onPageChange(index);
        },
      ),
    );
  }

  Widget buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: selectedPage,
      items: [
        BottomNavigationBarItem(label: "Page1", icon: Icon(Icons.pages)),
        BottomNavigationBarItem(label: "Page2", icon: Icon(Icons.pages)),
        BottomNavigationBarItem(label: "Page3", icon: Icon(Icons.pages)),
      ],
      onTap: (int index) {
        _pageController.animateToPage(index,
            duration: Duration(microseconds: 1000), curve: Curves.easeIn);
      },
    );
  }

  onPageChange(int index) {
    setState(() {
      selectedPage = index;
    });
  }
}