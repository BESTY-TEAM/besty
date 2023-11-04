import 'package:besty/models/news.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.news,
    required this.press,
  }) : super(key: key);

  final News news;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.25),
      child: InkWell(
        //onTap: press,
        //width: 200,
        child: Container(
          padding: const EdgeInsets.all(kDefaultPadding * 0.05),
                //height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(
                  news.image,
                  fit: BoxFit.cover
                ),
              ),
              Container(
                padding: const EdgeInsets.all(kDefaultPadding * 0.05),
                height: MediaQuery.of(context).size.height / 5,
                //width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  //borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5, horizontal: kDefaultPadding * 0.5),
                      child: Row(
                        children: [                         
                            Row(
                              children: [
                            const Icon(
                              Icons.remove_red_eye
                            ),
                            const SizedBox(
                              width: kDefaultPadding * 0.25,
                            ),
                            Text(
                              news.views.toString()+ "M",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700
                              ),
                            )
                                                ],
                                              ),
                        ],
                      ),
                    ),
                  ]
                  ),
              ),
            
            /*
              Container(
                padding: const EdgeInsets.all(kDefaultPadding * 0.05),
                height: MediaQuery.of(context).size.height / 5,
                //width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kContentColorDarkTheme,
                  borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                  image: DecorationImage(
                    image: AssetImage(
                      news.image,
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
            */
            ]
          ),
        ),
      )
    );
  }
}
