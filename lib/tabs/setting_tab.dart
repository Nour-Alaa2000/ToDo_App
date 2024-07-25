import 'package:flutter/material.dart';
import 'package:todo_app/tabs/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          AppLocalizations.of(context)!.language,
          style: TextStyle(color: AppColors.grey,
              fontSize: 30, fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: Text(AppLocalizations.of(context)!.arabic),
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppColors.primary)),
            child: Text(
              AppLocalizations.of(context)!.english,
              style:TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w100),
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          AppLocalizations.of(context)!.theme,
          style: TextStyle(color: AppColors.grey,
              fontSize: 30, fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: Text(AppLocalizations.of(context)!.dark),
                );
              },
            );
          },
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppColors.primary)),
            child: Text(
              AppLocalizations.of(context)!.dark,
              style:TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w100),
            ),
          ),
        ),

      ],

      ),
    );
  }
}
