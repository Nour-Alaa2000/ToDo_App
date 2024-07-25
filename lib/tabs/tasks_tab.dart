import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../task_item.dart';
import 'app_colors.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
         DateTime.now(),
          height: 90,
          locale: "en",
          initialSelectedDate: DateTime.now(),
          selectionColor: AppColors. secondary,
          selectedTextColor: AppColors.primary,
          onDateChange: (date){},


        ),
        SizedBox(height: 24),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
              return TaskItem();
            },
            itemCount: 30,
          ),
        )
      ],
    );
  }
}
