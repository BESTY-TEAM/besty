import 'package:besty/constants/constants.dart';
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
        padding: const EdgeInsets.symmetric(vertical: 200.0, horizontal: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          runSpacing: kDefaultPadding,
          spacing: kDefaultPadding,
          children: [
            const SizedBox(height: 100,),
            InputChip(
              avatar: const Icon(
                Icons.pregnant_woman,
                //color: kContentColorDarkTheme,
              ),
              label: Text(
                "Pregnancy Track",
                style: TextStyle(
                    color: isSelected ? kContentColorDarkTheme : kSecondaryColor.withOpacity(0.5)
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
            InputChip(
              avatar: const Icon(
                  Icons.bloodtype_outlined
              ),
              label: const Text(
                  "Flow Track"
              ),
              onSelected: (bool newBool){
                setState(() {
                  isSelected = !isSelected;
                });
              },
              selected: isSelected,
              selectedColor: kPrimaryColor,
            ),
          ],

        ),
      ),
    );
  }
}