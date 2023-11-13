import 'package:besty/constants/constants.dart';
import 'package:besty/screens/services/components/Input_select_service.dart';
import 'package:flutter/material.dart';

class SelectedSeviceScreen extends StatefulWidget{
  const SelectedSeviceScreen({Key? key}) : super(key: key);

  @override
  State<SelectedSeviceScreen> createState() => _SelectedSeviceScreenState();
}

class _SelectedSeviceScreenState extends State<SelectedSeviceScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
        child: Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          //runSpacing: kDefaultPadding / 10,
          spacing: kDefaultPadding / 3,
          children: [
            const SizedBox(height: 100,),
            SizedBox(height: 20,),
            InputSeviceScreen(title: "Pregnancy", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Forum", icon: Icons.groups, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
            InputSeviceScreen(title: "News", icon: Icons.insert_drive_file_outlined, isSelected: false),
            InputSeviceScreen(title: "Pregnancy Track", icon: Icons.pregnant_woman, isSelected: true),
           /*
            InputChip(
              labelPadding: EdgeInsets.all(kDefaultPadding * 0.2),
              avatar: Icon(
                  Icons.pregnant_woman,
                  color: isSelected ? kContentColorDarkTheme : kSecondaryColor.withOpacity(0.5)
              ),
              label: Padding(
                padding: const EdgeInsets.only(right: kDefaultPadding * 0.2),
                child: Text(
                  "Pregnancy Track",
                  style: TextStyle(
                      color: isSelected ? kContentColorDarkTheme : kSecondaryColor.withOpacity(0.5),
                      fontSize: 15
                  ),
                ),
              ),
              onSelected: (bool newBool){
                setState(() {
                  isSelected = !isSelected;
                });
              },
              selected: isSelected,
              selectedColor: kPrimaryColor,
            ),
        */
          ],

        ),
      ),
    );
  }
}