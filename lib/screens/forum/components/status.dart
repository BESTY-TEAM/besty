import 'package:besty/constants/constants.dart';
import 'package:besty/models/news.dart';
import 'package:besty/models/status.dart';
import 'package:besty/screens/forum/components/Statut_view.dart';
import 'package:besty/screens/forum/components/news_card.dart';
import 'package:besty/screens/forum/components/status_card.dart';
import 'package:flutter/material.dart';


class ActusScreen extends StatelessWidget {
  const ActusScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0xFFEEEEEE).withOpacity(0.35),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.4),
                  height: MediaQuery.of(context).size.height / 5,
                  color: const Color(0xFFEEEEEE),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: false,
                      primary: false,
                      //shrinkWrap: true,
                      itemCount: StatusData.length,
                      itemBuilder: (context, index) => StatusCard(
                        status: StatusData[index],
                          press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StatusView(status: StatusData[index],),
                          ),
                        ),
                      ),
                    ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.25, horizontal: kDefaultPadding * 0.5),
                child: Text(
                  "News",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Column(
                children:
                  List.generate(
                    NewsData.length,
                        (index) => NewsCard(
                      press: () {  },
                      news: NewsData[index],
                    ),
                  ),
              )
            ],
          ),            
        )
    );
  }
}
