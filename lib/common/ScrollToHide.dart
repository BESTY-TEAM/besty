import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideWidget extends StatefulWidget{
  const ScrollToHideWidget({
    Key? key,
    required this.child,
    required this.controller,
    this.duration = const Duration(milliseconds: 200),
    this.height = kBottomNavigationBarHeight,
  }) : super(key: key);

  final Widget child;
  final ScrollController controller;
  final Duration duration;
  final double height;

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool isVisible = true;


  @override
  void initState() {
    super.initState();
    widget.controller.addListener(listen);
  }

  @override
  void dispose(){
    widget.controller.removeListener(listen);
    super.dispose();
  }

  @override
  void listen(){
    final direction = widget.controller.position.userScrollDirection;
    if(direction == ScrollDirection.forward){
      show();
    } else if (direction == ScrollDirection.reverse){
      hide();
    }
  }

  @override
  void show(){
    if(!isVisible){
      setState(() {
        isVisible = true;
      });
    }
  }

  //void

  @override
  void hide(){
    if(isVisible){
      setState(() {
        isVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return AnimatedContainer(
      duration: widget.duration,
      height: isVisible ? widget.height : 0,
      child: Wrap(
        children: [
          widget.child,
        ],
      ),
    );
  }
}