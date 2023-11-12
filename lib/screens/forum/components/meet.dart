import 'package:besty/models/meet.dart';
import 'package:besty/screens/forum/components/meet_card.dart';
import 'package:flutter/material.dart';
import 'package:besty/constants/constants.dart';
import 'package:besty/models/news.dart';
import 'package:besty/models/status.dart';
import 'package:besty/screens/forum/components/news_card.dart';



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
                  padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 0.5,
                      vertical: kDefaultPadding * 0.5
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
              /*Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  primary: false,
                  //shrinkWrap: true,
                  itemCount: StatusData.length,
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
              ),*/
              //const SizedBox(width: kDefaultPadding * 0.5,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.4),
                  height: MediaQuery.of(context).size.height * 0.349,
                   // color: const Color(0xFFEEEEEE),
                    child: Expanded(
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
                    )
                ),
              ),
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
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                child: Container(
                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.4),
                    height: MediaQuery.of(context).size.height * 0.349,
                    // color: const Color(0xFFEEEEEE),
                    child: Expanded(
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
                    )
                ),
              ),
            ],
          ),
        )
    );
  }
}


