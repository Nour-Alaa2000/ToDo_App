
import 'package:flutter/material.dart';

import '../tabs/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime selectedDate = DateTime.now();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AppLocalizations.of(context)!.add_new_task,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            TextFormField(validator:(value) {
              if(value==null|| value.isEmpty){
                return AppLocalizations.of(context)!.please_enter_task_title;
              }
              return null ;
            } ,
              decoration: InputDecoration(
                  errorBorder:OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red
                      )
                  ) ,
                  label: Text(AppLocalizations.of(context)!.title),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(validator:(value) {
              if(value==null|| value.isEmpty){
                return AppLocalizations.of(context)!.please_enter_task_description;
              }
              return null ;
            } ,
              decoration: InputDecoration(errorBorder:OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red
                )
              ) ,
                  label: Text(AppLocalizations.of(context)!.description),
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18))),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              AppLocalizations.of(context)!.select_time,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            InkWell(
              onTap: () {
                selectDataFun();
              },
              child: Text(
                selectedDate.toString().substring(0, 10),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {
                if(formKey.currentState!.validate()){


                }
              },
              child: Text(
                AppLocalizations.of(context)!.addtask,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }

  selectDataFun() async {
    DateTime? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }
}
