import 'package:besty/constants/constants.dart';
import 'package:flutter/material.dart';

class InputSeviceScreen extends StatefulWidget{
  InputSeviceScreen({Key? key, required this.isSelected, required this.title, required this.icon}) : super(key: key);
  String title;
  bool isSelected;
  IconData icon;

  @override
  State<InputSeviceScreen> createState() => _SelectedSeviceScreenState();
}

class _SelectedSeviceScreenState extends State<InputSeviceScreen> {

  @override
  Widget build(BuildContext context){
    return InputChip(
      avatar: Icon(
        widget.icon,
          color: widget.isSelected ? kContentColorDarkTheme : kSecondaryColor.withOpacity(0.5)
      ),
      label: Text(
        widget.title,
        style: TextStyle(
            color: widget.isSelected ? kContentColorDarkTheme : kSecondaryColor.withOpacity(0.5)
        ),
      ),
      onSelected: (bool newBool){
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
      },
      selected: widget.isSelected,
      selectedColor: kPrimaryColor,
    );
  }
}