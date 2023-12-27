import 'package:besty/constants.dart';
import 'package:besty/models/conseil.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';


class EduationCard extends StatefulWidget {
  EduationCard({
    Key? key,
    //this.isExpanded = false,
    required this.conseil,
  }) : super(key: key);

  final Conseil conseil;
  @override
  State<EduationCard> createState() => _EduationCardState();
}

class _EduationCardState extends State<EduationCard> {

  bool isExpanded = false;
  /*

class EduationCard extends StatelessWidget {
  EduationCard({
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
          shadowColor: Color(0xFFFFFFFF),
          //margin: const EdgeInsets.symmetric(vertical: kDefaultPadding ),
          elevation: 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AspectRatio(
                      aspectRatio: 1.5,
                      child: Image.asset(
                        widget.conseil.image,
                        fit: BoxFit.cover
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5, horizontal: kDefaultPadding * 0.05),
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
                              vertical: kDefaultPadding * 0.15,
                              horizontal: kDefaultPadding * 0.5
                            ),
                            child: Text(
                              widget.conseil.title,
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
                  ]
                ),
              
              ExpandablePanel(
                //header: Text("Hello"),
              controller: ExpandableController( initialExpanded: isExpanded),
              collapsed: Padding(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding * 0.5,
                    right: kDefaultPadding * 0.5,
                    bottom: kDefaultPadding * 0.6
                  ),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                      widget.conseil.message,
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
                    widget.conseil.message,
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
                child: Visibility(
                  visible: !isExpanded,
                  child: FilledButton(
                    onPressed: (){
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },       
                    child: const Text(
                      'Voir plus',
                    ),          
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5, vertical: kDefaultPadding * 0.5),
                child: Visibility(
                    visible: isExpanded,
                    child: InkWell(
                      onTap: (){
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                      },
                      child: const Text(
                        "Voir Moins",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),
                      ),
                    ),
                  ),
              )              
            ],
          ),
        ),
      )
    );
  }
}
