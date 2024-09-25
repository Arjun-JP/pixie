import 'package:flutter/material.dart';
import 'package:pixieapp/const/colors.dart';
import 'package:pixieapp/pages/AddCharacter.dart/add_character.dart';
import 'package:pixieapp/widgets/choicechip.dart';

class AddNewCharacter extends StatefulWidget {
  const AddNewCharacter({super.key, required this.text});
  final String text;

  @override
  State<AddNewCharacter> createState() => _AddNewCharacterState();
}

FormFieldController<List<String>>? choiceChipsValueController1;
List<String>? get choiceChipsValues1 => choiceChipsValueController1?.value;
set choiceChipsValues1(List<String>? val) =>
    choiceChipsValueController1?.value = val;

class _AddNewCharacterState extends State<AddNewCharacter> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * .7,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: AppColors.bottomSheetBackground,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18))),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text,
                style: theme.textTheme.displayMedium?.copyWith(
                    color: AppColors.textColorblue,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 25),
            const TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Character name",
                hintStyle: TextStyle(color: Color.fromARGB(255, 199, 199, 199)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    strokeAlign: 5,
                    color: AppColors.textColorblue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.textColorblue,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColors.textColorblue,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
