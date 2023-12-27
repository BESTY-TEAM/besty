import 'package:besty/models/meet.dart';
import 'package:besty/screens/forum/components/meet_card.dart';
import 'package:flutter/material.dart';
import 'package:besty/constants/constants.dart';



class MeetScreen extends StatelessWidget {
  const MeetScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xFFEEEEEE).withOpacity(0.35),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.only(
                      left: kDefaultPadding * 0.5,
                      right: kDefaultPadding * 0.5,
                      top: kDefaultPadding * 0.5
                  ),
                  child: Text(
                    'Popular Webinar',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      color: kTitleTextColor
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.2),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.1),
                  height: MediaQuery.of(context).size.height * 0.359,
                   // color: const Color(0xFFEEEEEE),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        primary: false,
                        shrinkWrap: true,
                        //shrinkWrap: true,
                        itemCount: MeetsData.length,
                        itemBuilder: (context, index) => MeetCard(
                          meet: MeetsData[index], press: () {  },
                          /*press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessagesScreen(),
                          ),
                        ),*/
                        ),
                      ),
                ),
              ),

              // Recommanded
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 0.5,
                    //vertical: kDefaultPadding * 0.1
                ),
                child: Text(
                  'Recommanded Webinar',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kTitleTextColor
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.2),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.1),
                  height: MediaQuery.of(context).size.height * 0.359,
                    // color: const Color(0xFFEEEEEE),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        primary: false,
                        //shrinkWrap: true,
                        itemCount: MeetsData.length,
                        itemBuilder: (context, index) => MeetCard(
                          meet: MeetsData[index], press: () {  },
                          /*press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessagesScreen(),
                          ),
                        ),*/
                        ),
                      ),
                ),
              ),

              // Near you
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.5,
                  //vertical: kDefaultPadding * 0.1
                ),
                child: Text(
                  'Near you Webinar',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kTitleTextColor
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.2),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.1),
                  height: MediaQuery.of(context).size.height * 0.359,
                    // color: const Color(0xFFEEEEEE),
                    child: ListView.builder(
                        physics: const ScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        primary: false,
                        //shrinkWrap: true,
                        itemCount: MeetsData.length,
                        itemBuilder: (context, index) => MeetCard(
                          meet: MeetsData[index], press: () {  },
                          /*press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MessagesScreen(),
                          ),
                        ),*/
                        ),
                      ),
                ),
              ),
            ],
          ),
        )
    );
  }
}


