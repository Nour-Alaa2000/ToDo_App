import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane:
      ActionPane(motion: DrawerMotion(), extentRatio: .6, children: [
        SlidableAction(
          onPressed: (context) {},
          label: "Delete",
          backgroundColor: Colors.red,
          icon: Icons.delete,
          spacing: 8,
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
        ),
        SlidableAction(
          onPressed: (context) {},
          label: "Edit",
          backgroundColor: Colors.blue,
          icon: Icons.edit,
          spacing: 8,
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 4,
              decoration: BoxDecoration(
                  color: Color(0xFF5D9CEC),
                  borderRadius: BorderRadius.circular(25)),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.title,
                    style: TextStyle(
                      fontSize: 18,
                      color:Color(0xFF5D9CEC),
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context)!.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFC8C9CB),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(
                Icons.done,
                color: Colors.white,
                size: 30,
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF5D9CEC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
            )
          ],
        ),
      ),
    );
  }
}