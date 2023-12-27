import 'package:besty/constants/constants.dart';
import 'package:besty/models/conseil.dart';
import 'package:flutter/material.dart';

class EduationCardDetail extends StatefulWidget {
  EduationCardDetail({
    Key? key,
    //this.isExpanded = false,
    required this.conseil,
  }) : super(key: key);

  final Conseil conseil;
  @override
  State<EduationCardDetail> createState() => _EduationCardDetailState();
}

class _EduationCardDetailState extends State<EduationCardDetail> {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kContentColorDarkTheme,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: kContentColorDarkTheme,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(
                  widget.conseil.image,
                  fit: BoxFit.cover,
                ),
              ),
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
                ),
              ),                            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.conseil.message,
                maxLines: 1000,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(
                  //fontFamily: 'nunito',
                    color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.w500,
                  ),
              ),
            ),
          ]
          ),
        ),
      ),
    );
  }
}
