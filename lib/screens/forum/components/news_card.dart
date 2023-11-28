import 'package:besty/models/news.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import '../../../constants/constants.dart';


class NewsCard extends StatefulWidget {
  NewsCard({
    Key? key,
    //this.isExpanded = false,
    required this.news,
    required this.press,
  }) : super(key: key);

  final News news;
  final VoidCallback press;
  //bool isExpanded = false;
  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {

  bool isExpanded = false;
  /*

class NewsCard extends StatelessWidget {
  NewsCard({
    Key? key,
    this.isExpanded = false,
    required this.news,
    required this.press,
  }) : super(key: key);


  News news;
  VoidCallback press;
  bool isExpanded ;
*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.25),
      child: InkWell(
        //onTap: press,
        //width: 200,
        child: Card(
          shadowColor: Color(0x3600000F),
          //margin: const EdgeInsets.symmetric(vertical: kDefaultPadding ),
          elevation: 0.2,
          child: Column(
            children: [
              Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset(
                        widget.news.image,
                        fit: BoxFit.cover
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(kDefaultPadding * 0.05),
                      //height: MediaQuery.of(context).size.height / 5,
                      //width: MediaQuery.of(context).size.width,
                      //decoration: const BoxDecoration(
                        //color: Color(0xFFFFFFFF),
                        //borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                      //),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding * 0.5, 
                              horizontal: kDefaultPadding * 0.5
                            ),
                            child: Row(
                              children: [                         
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.remove_red_eye,
                                        color: kSecondaryColor,
                                      ),
                                      const SizedBox(
                                        width: kDefaultPadding * 0.25,
                                      ),
                                      Text(
                                        "${widget.news.views}M",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700
                                        ),
                                      )
                                  ],
                                ),
                                const SizedBox(
                                  width: kDefaultPadding * 0.5,
                                ),
                                Row(
                                    children: [
                                      const Icon(
                                        Icons.favorite_border_outlined,
                                        color: kPrimaryColor,
                                      ),
                                      const SizedBox(
                                        width: kDefaultPadding * 0.25,
                                      ),
                                      //BottomSheet(),
                                      Text(
                                        "${widget.news.views}M",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700
                                        ),
                                      )
                                  ],
                                ),
                                const SizedBox(
                                  width: kDefaultPadding * 0.5,
                                ),
                                const Icon(
                                  Icons.share,
                                  color: kSecondaryColor,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: kDefaultPadding * 0.15,
                              horizontal: kDefaultPadding * 0.5
                            ),
                            child: Text(
                              widget.news.title,
                              style: Theme.of(context)
                              .textTheme
                              .headline6!
                              /*.copyWith(
                                //fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.8),
                                //height: 0.10,
                                //letterSpacing: -0.24,
                              ),*/
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
              
              ExpandablePanel(
                //header: Text("Hello"),
              controller: ExpandableController( initialExpanded: isExpanded),
              collapsed: Padding(
                  padding: const EdgeInsets.only(
                    top: kDefaultPadding * 0.15,
                    left: kDefaultPadding * 0.5
                  ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                      widget.news.message,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(
                    //fontFamily: 'nunito',
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                    //height: 0.10,
                    letterSpacing: -0.24,
                    ),
                ),
                  ),
              ),
              expanded: Padding(
                padding: const EdgeInsets.only(
                    top: kDefaultPadding * 0.15,
                    left: kDefaultPadding * 0.5
                ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    widget.news.message,
                    maxLines: 80,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      //fontFamily: 'nunito',
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                      //height: 0.10,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5, vertical: kDefaultPadding * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '5 Day ago',
                      style: TextStyle(
                        fontSize: 10
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child:  Text(
                          isExpanded ? 'Voir moins' : 'Voir plus')
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
//6